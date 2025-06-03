public class Board{
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
    boolean checkBounds(int r, int c){
        return r >= 0 && c >= 0 && r < board.length && c < board[r].length;
    }
    boolean interactable(int r, int c){
        if (checkBounds(r,c)){
            return false;
        }
        Tile tile = tile(r,c);
        return tile.isFlagged() || tile.isRevealed();
    }
    void revealTile(int r, int c){ // returns false if invalid (if flagged, or revealed), returns true otherwise.
        if(!interactable(r,c)){
            return;
        }
        Tile tile = tile(r,c);
        if (tile.isMine()){
            gameState = -1;
        }
        tile.reveal();

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
    void clearZeroes(int r, int c){
        if(!checkBounds(r,c)){
            return;
        } 
        Tile tile = board[r][c];
        if (tile.isRevealed == false && tile.getNeighborCount() == 0){
            tile.setReveal(true);
            for (int i = -1; i <= 1; i++) {
                for (int j = -1; j <= 1; j++) {
                    clearZeroes(r + i, c + j);
                }
            }
        }
    }
    void addNeighbors(int r, int c){
        for (int ri = -1; ri <= 1; ri++){
            for (int ci = -1; ci <= 1; ci++){
                int selectR = r+ri;
                int selectC = c+ci;
                if (checkBounds(selectR,selectC) && board[selectR][selectC].isMine()){
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
                if (checkBounds(selectR, selectC) && board[selectR][selectC].isMine()){
                    count++;
                }
            }
        }
        board[r][c].setNeighborCount(count);
    }
    
    
   
}
