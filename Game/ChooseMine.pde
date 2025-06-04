class ChooseMine extends Button{

    ChooseMine(int x, int y){
        super(x,y);
    }

    void draw(){
        tileMine.resize(64,64);
        rect(xCor,yCor, 64,64);
        image(tileMine,xCor, yCor);
        tileMine.resize(30,30);
    }

    void function(){

    }
}
