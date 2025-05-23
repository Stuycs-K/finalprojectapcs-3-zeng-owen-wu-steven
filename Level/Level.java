class Level{
    private Board board;
    private int minesLeft;
    private Button[] buttons;

    public Level(Board board, int remainingMines, Button[] buttons){

    }

    public void loadLevel(){
        
    }
    public void click(){

    }
    public void chord(){

    }
    public void flagTile(Tile tile){
        tile.setFlag(true);
    }

    public void checkGameState(){

    }
    public void win(){

    }
    public void lose(){


    }
    public void clickButton(Button button){
        button.function();
    }



}