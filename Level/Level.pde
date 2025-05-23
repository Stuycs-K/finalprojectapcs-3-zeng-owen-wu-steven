class Level{
    Board board;
    int minesLeft;
    Button[] buttons;

    Level(Board board, int remainingMines, Button[] buttons){

    }

    void loadLevel(){
        
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