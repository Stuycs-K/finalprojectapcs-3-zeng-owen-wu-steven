class Slider{
    int x;
    int y;
    int sWidth; // hori
    int sHeight;  // vert


    String title;

    Slider(int xCord, int yCord, int myWidth, int myHeight, String name){
        this.x = xCord;
        this.y = yCord;
        this.sWidth = myWidth;
        this.sHeight = myHeight;
        this.title = name;
    }

    void draw(){
        rect(x,y, sWidth, sHeight);

    }
}
