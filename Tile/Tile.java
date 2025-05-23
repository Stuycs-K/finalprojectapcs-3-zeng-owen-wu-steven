public class Tile{

    private boolean isMine;
    private int neighborCount;
    private boolean isRevealed;
    private boolean isFlagged;


    public Tile(int neighbors, boolean mine,  boolean revealed, boolean flagged){
        this.neighborCount = neighbors;
        this.isMine = mine;
        this.isRevealed = revealed;
        this.isFlagged = flagged;
    }

    public boolean isMine(){
        return isMine;
    }
    public boolean isRevealed(){
        return isRevealed;
    }
    public boolean isFlagged(){
        return isFlagged;
    }
    public int getNeighborCount(){
        return neighborCount;
    }

    public void setMineStatus(boolean status){
        this.isMine = status;
    }

    public void setFlag(boolean flagStatus){
        this.isFlagged = flagStatus;
    }

    public void setReveal(boolean revealedStatus){
        this.isRevealed = revealedStatus;
    }


    public void setNeighborCount(int count){
        this.neighborCount = count;
    }

}