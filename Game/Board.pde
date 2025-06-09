class Board{
    Tile[][] board;
    int totalMines;
    int minesLeft; // totalMines - flagged tiles
    boolean firstClick; // necessary?
    int gameState; // -1 :: loss, 0 :: in progress, 1 :: win

    Board(int width, int height, int mines){
        int tileMagnification = 30;

        board = new Tile[16][16];
        totalMines = mines;
        minesLeft = mines;
        gameState = 0;
        firstClick = true;
        for (int r = 0; r < board.length; r++){
            for (int c = 0; c < board[r].length; c++){
                board[r][c] = new Tile(r * tileMagnification, c * tileMagnification, r, c);
            }
        }
    }

    void draw(){
        for (int r = 0; r < board.length; r++){
            for (int c = 0; c < board[r].length; c++){
                board[r][c].draw();
            }
        }
    }
    Tile tile(int r, int c){ // accessor
        return board[r][c];
    }
    void toggleFlag(int r, int c){
        board[r][c].toggleFlag();
    }
    boolean inBounds(int r, int c){ // returns true if in bounds
        return r >= 0 && c >= 0 && r < board.length && c < board[r].length;
    }
    boolean interactable(int r, int c){ // returns true if in bounds, not flagged, not revealed;
        if (!inBounds(r,c)){
            return false;
        }
        Tile tile = tile(r,c);
        return !(tile.isFlagged() || tile.isRevealed()); 
    }
    void revealTile(int r, int c){ // returns false if invalid (if flagged, or revealed), returns true otherwise.
        if(!interactable(r,c)){
            return;
        }
        Tile tile = tile(r,c);
        tile.reveal();
        if (tile.isMine()){
            gameState = -1;
        }
        if (tile.getNeighborCount() == 0){
            clearZeroes(r,c);
        }
    }

    
    void generate(int r, int c){ // put mines randomly everywhere, except the clicked tile & surrounding tiles
        for (int i = 0; i < totalMines; i++){
            int randR = (int)(random(board.length));
            int randC = (int)(random(board[randR].length));
            if (randR < r - 1 || randR > r + 1 || randC < c - 1 || randC > c + 1){
                Tile tile = board[randR][randC];
                tile.setMineStatus(true);
                addNeighbors(randR, randC);
            }else{
                i--;
            }
        }
    }
    void clearZeroes(int startR, int startC){
        ArrayDeque<int[]> queue = new ArrayDeque<>();
        queue.add(new int[]{startR, startC});
        while (!queue.isEmpty()) {
            int[] current = queue.poll();
            int r = current[0];
            int c = current[1];

            if (!inBounds(r, c)){
                continue;
            }
            Tile tile = tile(r,c);
            if (tile.isCleared()){
                continue;
            }
            tile.clear();

            if (tile.getNeighborCount() != 0){
                continue;
            }

            for (int ri = -1; ri <= 1; ri++) {
                for (int ci = -1; ci <= 1; ci++) {
                    if (ri == 0 && ci == 0) continue;
                    int selectR = r + ri;
                    int selectC = c + ci;
                    if (inBounds(selectR, selectC) && !board[selectR][selectC].isCleared()) {
                        queue.add(new int[]{selectR, selectC});
                    }
                }
            }
        }
    }
    void addNeighbors(int r, int c){
        for (int ri = -1; ri <= 1; ri++){
            for (int ci = -1; ci <= 1; ci++){
                int selectR = r+ri;
                int selectC = c+ci;
                if (inBounds(selectR,selectC) && board[selectR][selectC].isMine()){
                    board[selectR][selectC].changeNeighborCount(1); // + 1 count
                }
            }
        }
    }
    void calcAmtNeighbors(int r, int c){
        int count = 0;
        for (int ri = -1; ri <= 1; ri++){
            for (int ci = -1; ci <= 1; ci++){
                int selectR = r+ri;
                int selectC = c+ci;
                if (inBounds(selectR, selectC) && board[selectR][selectC].isMine()){
                    count++;
                }
            }
        }
        board[r][c].setNeighborCount(count);
    }
    
    
   
}
