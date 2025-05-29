class Level{
    Tile tile;
    Board board;
    int minesLeft;
    Button[] buttons;
    

    Level(Board board, int remainingMines, Button[] buttons){
        
    }

    void loadLevel(){
        board.draw();
    }
    void click(int r,int c){
        
    }
    void chord(){

    }
    void flagTile(Tile tile){
        tile.setFlag(true);
    }

    void checkGameState(){

    }
    void win(){
        
    }
    void lose(){

    }
    void clickButton(Button button){
        button.function();
    }



}
