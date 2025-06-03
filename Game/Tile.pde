class Tile{

    boolean isMine;
    int neighborCount;
    boolean isRevealed;
    boolean isFlagged;
    boolean isCleared;
    int xCor;
    int yCor;
    int r;
    int c;

    Tile(int neighbors, boolean mine,  boolean revealed, boolean flagged, boolean cleared, int xCor, int yCor, int r, int c){
        int xOffset = width / 4;
        int yOffset = height / 6;




        this.neighborCount = neighbors;
        this.isMine = mine;
        this.isRevealed = revealed;
        this.isFlagged = flagged;
        this.isCleared = cleared;
        this.xCor = xCor + xOffset;
        this.yCor = yCor + yOffset;
        this.r = r;
        this.c = c;
    }

    Tile(int xCor, int yCor, int r, int c){
        this(0,false,false,false,false,xCor,yCor,r,c);
    }


    boolean isMine(){
        return isMine;
    }
    boolean isRevealed(){
        return isRevealed;
    }
    boolean isFlagged(){
        return isFlagged;
    }
    boolean isCleared(){
        return isCleared;
    }
    int getNeighborCount(){
        return neighborCount;
    }
    int getXcor(){
        return xCor;
    }
    int getYcor(){
        return yCor;
    }
    int getR(){
        return r;
    }
    int getC(){
        return c;
    }

    void setMineStatus(boolean status){
        this.isMine = status;
    }
    void setClearedStatus(boolean status){
        this.isCleared = status;
    }
    void setFlag(boolean flagStatus){
        this.isFlagged = flagStatus;
    }
    void setRevealedStatus(boolean revealedStatus){
        this.isRevealed = revealedStatus;
    }
    void setNeighborCount(int count){
        this.neighborCount = count;
    }
    void toggleFlag(){
        setFlag(!isFlagged());
    }
    void reveal(){
        if (isRevealed()){
            println("unRevealing tile, SHOULD NOT HAPPEN"); // DEBUG
        }
        setRevealedStatus(!isRevealed());
    }
    void clear(){
        if (isCleared()){
            println("unClearing tile, SHOULD NOT HAPPEN"); // DEBUG
        }
        setClearedStatus(!isCleared());
        setRevealedStatus(true);
    }
    void changeNeighborCount(int count){
        setNeighborCount(getNeighborCount() + count);
    }

    void setX(int x){
        xCor = x;
    }
   
    void setY(int y){
        yCor = y;
    }

    void setR(int r){
        this.r = r;
    }
   
    void setC(int c){
        this.c = c;
    }

    void draw(){
        if(isFlagged && !isRevealed){
            image(tileFlag, xCor, yCor);
        }

        else if(!isRevealed){
            image(tileUnknown, xCor, yCor); 
        }
        

        else if(isMine){
            image(tileMine, xCor, yCor);
        }
        
    
        else {
            switch(neighborCount){
                case 0:
                    image(tileEmpty, xCor, yCor);
                    break;
                case 1:
                    image(tile1, xCor, yCor);
                    break;
                case 2:
                    image(tile2, xCor, yCor);
                    break;
                case 3:
                    image(tile3, xCor, yCor);
                    break;
                case 4:
                    image(tile4, xCor, yCor);
                    break;
                case 5:
                    image(tile5, xCor, yCor);
                    break;
                case 6:
                    image(tile6, xCor, yCor);
                    break;
                case 7:
                    image(tile7, xCor, yCor);
                    break;
                case 8:
                    image(tile8, xCor, yCor);
                    break;
            }
        }

    }



}
