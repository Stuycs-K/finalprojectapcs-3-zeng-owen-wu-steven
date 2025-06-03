class Restart extends Button{


    Restart(int xCor, int yCor){
        super(xCor, yCor);
    }


    void function(){
        level = new Level(new Board(16,16,20), 20);
    }

    void draw(){
        fill(255);
        rect(xCor,yCor, 64,64);
        image(restartButton,xCor,yCor);
    }


}