class Button {
    int xCor;
    int yCor;


    Button(int x, int y){
        this.xCor = x;
        this.yCor = y;
    }

    void function(){
        
    }

    void draw(){
        rect(xCor,yCor, 64,64);
    }


}