class Level{
    Board board;
    int minesLeft;
    

    public Level(Board board, int remainingMines){
        
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
