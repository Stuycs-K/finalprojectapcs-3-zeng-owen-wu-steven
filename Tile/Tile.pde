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


    void setNeighborCount(){
        count = 0;
        for (int row = -1; row < 2; row++){
            for(int col = -1; col < 2; row++){
                
            }
        }
    }

}