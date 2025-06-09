class ChooseMine extends Button{
    PImage thisMine;
    Slider slider;

    ChooseMine(int x, int y){
        super(x,y);
        this.thisMine = loadImage("../Sprites/Sprites/TileMine.png");
        thisMine.resize(64,64);

        slider = new Slider(this.xCor + 80, this.yCor - 32, 256,128, "Next # of mines");
    }

    void draw(int mX, int mY){
        rect(xCor,yCor, 64,64);
        image(thisMine,xCor, yCor);
        slider.drawSlider(mX, mY);
    }

    void function(){

        slider.isActive = !slider.isActive;

    }
}
