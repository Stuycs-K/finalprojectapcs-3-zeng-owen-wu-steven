public class Tile{

    boolean isMine;
    int neightborCount;
    boolean isRevealed;
    boolean isFlagged;


    Tile(int neighbors, boolean mine,  boolean revealed, boolean flagged){
        this.neightborCount = neighbors;
        this.isMine = mine;
        this.isRevealed = revealed;
        this.isFlagged = flagged;
    }

    boolean reveal(){
        if(mine){
            // reveal method
        }
        else{
            // reveal numbers
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