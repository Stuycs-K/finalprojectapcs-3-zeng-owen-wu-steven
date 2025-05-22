public class Board{
    Tile[][] board;
    int totalMines;
    int minesLeft;
    boolean hasClicked;
    int gameState;

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
    void generate(int r, int c){
        for (int i = 0; i < totalMines; i++){
            Random rand = new Random();
            int rand.nextInt();
        }
    }
    void calcAmtNeighbors(int r, int c){
        int count = 0;
        Tile t = board[r][c];
        for (int ri = -1; ri <= 1; ri++){
            for (int ci = -1; ci <= 1; ci++){
                if ()
            }
        }

    }
    void flagTile(int r, int c){
        board[r][c].flag = !board[r][c].flag;
    }
}