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
        for (int r = 0; r < height; r++){
            for (int c = 0; c < width; c++){
                board[r][c] = new Tile(r * tileMagnification,c * tileMagnification);
            }
        }
    }
    void draw(){
        for (int r = 0; r < board.length; r++){
            for (int c = 0; c < board[0].length; c++){
                board[r][c].draw();
            }
        }
    }
    void revealTile(int r, int c){ // returns false if invalid (if flagged, or revealed), returns true otherwise.
        if(r >= 0 && c >= 0 && r < board.length && c < board[0].length){ 
            Tile tile = board[r][c];
            if (!tile.isFlagged && !tile.isRevealed){
                tile.setReveal(true);
                if (tile.isMine){
                    gameState = -1;
                }
            }
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
    void clearZeros(int r, int c){
        if(r >= 0 && c >= 0 && r < board.length && c < board[0].length){ 
            Tile tile = board[r][c];
            if (!tile.isFlagged && !tile.isRevealed){
                tile.setReveal(true);
                if (tile.getNeighborCount() == 0){
                    for (int i = -1; i <= 1; i++) {
                        for (int j = -1; j <= 1; j++) {
                            if (i != 0 || j != 0) {
                                clearZeroes(r + i, c + j);
                            }
                        }
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
                if (selectR >= 0 && selectR < board.length && selectC >= 0 && selectC < board[selectR].length && board[selectR][selectC].isMine() ){
                    board[selectR][selectC].setNeighborCount(board[selectR][selectC].getNeighborCount() + 1); // + 1 count
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
                if (selectR >= 0 && selectR < board.length && selectC >= 0 && selectC < board[selectR].length && board[selectR][selectC].isMine()){
                    count++;
                }
            }
        }
        board[r][c].setNeighborCount(count);
    }
    
    
   
}
