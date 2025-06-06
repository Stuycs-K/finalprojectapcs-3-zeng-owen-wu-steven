class ChooseMine extends Button{
    PImage thisMine;    

    ChooseMine(int x, int y){
        super(x,y);
        this.thisMine = loadImage("../Sprites/Sprites/TileMine.png");
        thisMine.resize(64,64);
    }

    void draw(){
        rect(xCor,yCor, 64,64);
        image(thisMine,xCor, yCor);
    }

    void function(int count){
        mineCount = count;
    }
}
