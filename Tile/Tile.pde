public class Tile{

    boolean isMine;
    int neightborCount;
    boolean isRevealed;
    boolean isFlagged;
    int xCor;
    int yCor;
    PImage tile1;
    PImage tile2;
    PImage tile3;
    PImage tile4;
    PImage tile5;
    PImage tile6;
    PImage tile7;
    PImage tile8;
    PImage tileEmpty;
    PImage tileExploded;
    PImage tileFlag;
    PImage tileMine;
    PImage tileUnknown;

    Tile(int neighbors, boolean mine,  boolean revealed, boolean flagged, int xCor, int yCor){
        this.neighborCount = neighbors;
        this.isMine = mine;
        this.isRevealed = revealed;
        this.isFlagged = flagged;
        this.xCor = xCor;
        this.yCor = yCor;


        
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

    void draw(){

    }

    void setup(){

    }
}