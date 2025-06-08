class Slider{
    int x;
    int y;
    int sWidth; // hori
    int sHeight;  // vert
    boolean isActive;
    String title;

    Slider(int xCord, int yCord, int myWidth, int myHeight, String name){
        this.x = xCord;
        this.y = yCord;
        this.sWidth = myWidth;
        this.sHeight = myHeight;
        this.title = name;
        this.isActive = false;
    }

    void drawSlider(int mX, int mY){


        if(isActive){
            rect(x,y, sWidth, sHeight);
            line(x + sWidth * .1, y + sHeight * .25, x + sWidth * .1, y + sHeight*.75);
            line(x + sWidth * .9, y + sHeight * .25, x + sWidth * .9, y + sHeight*.75);
            line(x + sWidth * .1, y + sHeight * .5, x + sWidth * .9, y + sHeight*.5);
            fill(0);
            text(title, x + sWidth * .35, y + sHeight*.1);
            println(x + sWidth * .5 + "   " +  (y + sHeight * .1));



        }
        


    }
}
