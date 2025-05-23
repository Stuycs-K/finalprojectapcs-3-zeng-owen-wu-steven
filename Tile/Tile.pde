public class Tile{

    boolean isMine;
    int neightborCount;
    boolean isRevealed;
    boolean isFlagged;
    int xCor;
    int yCor;


    Tile(int neighbors, boolean mine,  boolean revealed, boolean flagged, int xCor, int yCor){
        this.neighborCount = neighbors;
        this.isMine = mine;
        this.isRevealed = revealed;
        this.isFlagged = flagged;
        this.xCor = xCor;
        this.yCor = yCor;
    }


    draw(){

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
        return neightborCount;
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

}