class Alternate extends Button{

    Alternate(int x, int y){
        super(x,y);

    }

    void draw(){
        fill(255);
        rect(xCor,yCor, 64,64);
        textSize(24);
        fill(0);
        text("Alt", xCor + 14, yCor + 32);
        textSize(16);
    }

    void function(){
        isNormal= false;
            for(int i = 0; i < level.board.board.length; i++){
            for(int j = 0; j < level.board.board[i].length; j++){
                level.board.calcAmtNeighbors(i,j);
            }
        }
    }
}