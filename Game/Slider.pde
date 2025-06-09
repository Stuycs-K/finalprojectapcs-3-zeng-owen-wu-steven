class Slider{
    int x;
    int y;
    int sWidth; // hori
    int sHeight;  // vert
    boolean isActive;
    String title;
    float knobX;
    boolean movingKnob;
    int numMines;
    


    Slider(int xCord, int yCord, int myWidth, int myHeight, String name){
        this.x = xCord;
        this.y = yCord;
        this.sWidth = myWidth;
        this.sHeight = myHeight;
        this.title = name;

        this.isActive = false;
        this.movingKnob = false;
        this.numMines = mineCount;
        this.knobX = x + sWidth * .5;
    }

    void drawSlider(int mX, int mY){

        float maxLeft = x +sWidth * .1;
        float maxRight = x + sWidth * .9;


    

        if(isActive){



            


            if(mousePressed && mouseButton == LEFT && dist(mouseX, mouseY, knobX, y + sHeight * .5) < 5){
                movingKnob = true;
            }

                
            if(movingKnob){
                knobX = constrain(mouseX, maxLeft, maxRight);
            }
            if(!mousePressed){
                movingKnob = false;
            }  
            knobX = constrain(knobX, maxLeft, maxRight);

            rect(x,y, sWidth, sHeight);
            strokeWeight(2);
            line(x + sWidth * .1, y + sHeight * .25, x + sWidth * .1, y + sHeight*.75);
            line(x + sWidth * .9, y + sHeight * .25, x + sWidth * .9, y + sHeight*.75);
            line(x + sWidth * .1, y + sHeight * .5, x + sWidth * .9, y + sHeight*.5);
            fill(0);
            text(title, x + sWidth * .35, y + sHeight*.1);

            circle(knobX, y + sHeight * .5, 5);
            
            text(knobX, y + sHeight * 6,)
            


        }
        


    }
}
