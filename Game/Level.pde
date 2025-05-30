class Level{
    Board board;
    int minesLeft;
    // Button[] buttons;
    

    Level(Board board, int remainingMines, Button[] buttons){
        
    }
    
    void loadLevel(){
        board.draw();
    }
    void click(int x, int y){
        // convert
    }
    void chord(int x, int y){

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
    // void clickButton(Button button){
    //     button.function();
    // }



}
