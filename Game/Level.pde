class Level{
    Board board;
    int minesLeft;
    Button[] buttons;

    public Level(Board board, int remainingMines, Button[] buttons){

    }

    void loadLevel(){
        board.draw()
    }
    void click(){

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