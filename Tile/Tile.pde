public class Tile{

    boolean isMine;
    int neightborCount;
    boolean isRevealed;
    boolean isFlagged;


    Tile(){

    }

    boolean reveal(){
        
        if(mine){

        }



        return mine;
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
        this.neightborCount = count;
    }

}