class Tile{

    boolean isMine;
    int neighborCount;
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


        tile1 = loadImage("Sprites/Sprites/Tile1.png");
        tile2 = loadImage("Sprites/Sprites/Tile2.png"); 
        tile3 = loadImage("Sprites/Sprites/Tile3.png"); 
        tile4 = loadImage("Sprites/Sprites/Tile4.png"); 
        tile5 = loadImage("Sprites/Sprites/Tile5.png"); 
        tile6 = loadImage("Sprites/Sprites/Tile6.png"); 
        tile7 = loadImage("Sprites/Sprites/Tile7.png"); 
        tile8 = loadImage("Sprites/Sprites/Tile8.png"); 
        tileEmpty = loadImage("Sprites/Sprites/Empty.png"); 
        tileExploded = loadImage("Sprites/Sprites/Exploded.png"); 
        tileFlag = loadImage("Sprites/Sprites/TileFlag.png"); 
        tileMine = loadImage("Sprites/Sprites/TileMine.png"); 
        tileUnknown = loadImage("Sprites/Sprites/TileUnknown.png"); 
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
        if(isMine){
            image(tileMine, xCor, yCor);
        }
        if(isFlagged){
            image(tileFlag, xCor, yCor);
        }

        if(!isRevealed){
            image(tileUnknown, xCor, yCor);
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
