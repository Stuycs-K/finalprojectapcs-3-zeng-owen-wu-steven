class Tile{

    boolean isMine;
    int neighborCount;
    boolean isRevealed;
    boolean isFlagged;
    int xCor;
    int yCor;

    Tile(int neighbors, boolean mine,  boolean revealed, boolean flagged, int xCor, int yCor){
        int xOffset = width / 4;
        int yOffset = height / 6;




        this.neighborCount = neighbors;
        this.isMine = mine;
        this.isRevealed = revealed;
        this.isFlagged = flagged;
        this.xCor = xCor + xOffset;
        this.yCor = yCor + yOffset;
        

    }

    Tile(int xCor, int yCor){
        this(0,false,false,false,xCor,yCor);
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
    int getNeighborCount(){
        return neighborCount;
    }
    int getXcor(){
        return xCor;
    }
    int getYcor(){
        return yCor;
    }

    void setMineStatus(boolean status){
        this.isMine = status;
    }

    void setFlag(boolean flagStatus){
        this.isFlagged = flagStatus;
    }

    void setReveal(boolean revealedStatus){
        this.isRevealed = revealedStatus;
    }


    void setNeighborCount(int count){
        this.neighborCount = count;
    }

    void setX(int x){
        xCor = x;
    
    }
   
    void setY(int y){
        yCor = y;
    }

    void draw(){
        if(isFlagged){
            image(tileFlag, xCor, yCor);
        }

        else if(!isRevealed){
            image(tileUnknown, xCor, yCor);
        }
        

        else if(isMine){
            image(tileMine, xCor, yCor);
        }
        
    
        else if(!(isRevealed && isMine)){
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
