public class Board{
    Tile[][] board;
    int totalMines;
    int minesLeft; // totalMines - flagged tiles
    boolean hasClicked; // necessary?
    int gameState; // -1 :: loss, 0 :: in progress, 1 :: win

    Board(int width, int height, int mines){
        board = new Tile[height][width];
        totalMines = mines;
        minesLeft = mines;
        gameState = 0;
        firstClick = false;
        for (int r = 0; r < height; r++){
            for (int c = 0; c < width; c++){
                board[r][c] = new Tile();
            }
        }
    }
    void draw() 
    void generate(int r, int c){ // put mines randomly everywhere, except the clicked tile & surrounding tiles
        for (int i = 0; i < totalMines; i++){
            Random rand = new Random();
            int randR = rand.nextInt(board.length);
            int randC = rand.nextInt(board[randR].length);
            if (randR < r - 1 && randR > r + 1 && randC < c - 1 && randC > c + 1){
                Tile tile = board[randR][randC];
                tile.mine = true;
                addNeighbors(randR, randC);
            }else{
                i--;
            }
        }
    }
    void addNeighbors(int r, int c){
        for (int ri = -1; ri <= 1; ri++){
            for (int ci = -1; ci <= 1; ci++){
                int selectR = r+ri;
                int selectC = c+ci;
                if (board[selectR][selectC].isMine && selectR >= 0 && selectR <= board.length && selectC >= 0 && selectR <= board[selectR].length){
                    board[selectR][selectC].neighborCount++;
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
                if (board[selectR][selectC].isMine && selectR >= 0 && selectR <= board.length && selectC >= 0 && selectR <= board[selectR].length){
                    count++;
                }
            }
        }
        board[r][c].neighborCount = count;
    }
    void flagTile(int r, int c){
        board[r][c].flag = !board[r][c].flag;
    }
}