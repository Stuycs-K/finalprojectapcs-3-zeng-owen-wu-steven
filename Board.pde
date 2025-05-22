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
    }
    void generate(int r, int c){
        
    }
    void flagTile(int r, int c){
        board[r][c].flag = !board[r][c].flag;
    }
}