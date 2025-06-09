Level level;
Restart restart;
ChooseMine chooseMine;

int mineCount;

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
PImage restartButton;

void setup(){
  size(1080,720);
  textSize(16);
  strokeWeight(2);
        tile1 = loadImage("../Sprites/Sprites/Tile1.png");
        tile2 = loadImage("../Sprites/Sprites/Tile2.png"); 
        tile3 = loadImage("../Sprites/Sprites/Tile3.png"); 
        tile4 = loadImage("../Sprites/Sprites/Tile4.png"); 
        tile5 = loadImage("../Sprites/Sprites/Tile5.png"); 
        tile6 = loadImage("../Sprites/Sprites/Tile6.png"); 
        tile7 = loadImage("../Sprites/Sprites/Tile7.png"); 
        tile8 = loadImage("../Sprites/Sprites/Tile8.png"); 
        tileEmpty = loadImage("../Sprites/Sprites/TileEmpty.png"); 
        tileExploded = loadImage("../Sprites/Sprites/TileExploded.png"); 
        tileFlag = loadImage("../Sprites/Sprites/TileFlag.png"); 
        tileMine = loadImage("../Sprites/Sprites/TileMine.png"); 
        tileUnknown = loadImage("../Sprites/Sprites/TileUnknown.png"); 
        restartButton = loadImage("../Sprites/Sprites/Restart.png");

        tile1.resize(30,30);
        tile2.resize(30,30);
        tile3.resize(30,30);
        tile4.resize(30,30);
        tile5.resize(30,30);
        tile6.resize(30,30);
        tile7.resize(30,30);
        tile8.resize(30,30);
        tileEmpty.resize(30,30);
        tileExploded.resize(30,30);
        tileMine.resize(30,30);
        tileFlag.resize(30,30);
        tileUnknown.resize(30,30);

        mineCount = 100;
        level = new Level(new Board(16,16,mineCount), mineCount);
        restart = new Restart((int)(width * .64), (int) (height * .25), mineCount);
        chooseMine = new ChooseMine((int) (width * .64), (int) (height * .35));


        
        
        toString();

        
        
        
}

void draw(){
    background(204, 204, 204); // reset background
    text("Mines Left: " + level.board.minesLeft, 500,100); // mineCount
    restart.draw();
    chooseMine.draw(mouseX, mouseY);
    
    



    for(int i = 0; i < level.board.board.length; i++){
            for(int j = 0; j < level.board.board[i].length; j++){
                level.board.calcAmtNeighbors(i,j);
            }
        }

    level.checkWin();
    if(level.board.gameState == -1){
        level.draw();
        level.lose();
        level.board.firstClick = true;
    }
    if(level.board.gameState == 1){
        level.win();
    }
    if(level.board.gameState == 0){
        level.draw();

    } 
    // DEBUG
    fill(0);
    // text(mouseX + ", "+mouseY, mouseX, mouseY);

}


void mouseClicked(){

    if(mouseButton == LEFT){
        if(mouseX >= restart.xCor && mouseX < (restart.xCor + 64) && mouseY >= restart.yCor && mouseY < (restart.yCor + 64)){
            restart.function();
        }


        if(mouseX >= chooseMine.xCor && mouseX < (chooseMine.xCor + 64) && mouseY >= chooseMine.yCor && mouseY < (chooseMine.yCor + 64)){
            chooseMine.function();
            
        }



    }

    if(level.board.gameState == 0){

        if(mouseButton == LEFT){
            level.click(mouseX, mouseY);
            toString();
        }
        if(mouseButton == CENTER){
            level.chord(mouseX, mouseY);
            toString();
        }
        if(mouseButton == RIGHT){
            level.flagTile(mouseX, mouseY);
            toString();
        }

    }

}

String toString(){
    String ans = "{";

    for(int i = 0; i < level.board.board.length; i++){
        for(int j = 0; j < level.board.board[i].length; j++){
            if(level.board.board[j][i].isFlagged()){
                ans += "flag ";

            }

            if(level.board.board[j][i].isMine()){
                ans += "mine ";
                
            }
            ans += level.board.board[j][i].neighborCount;
            ans+= ", ";
        }
        ans+= "\n";
    }
    ans+= "}";

    println(ans);
    println("state : " + level.board.gameState);
    println(level.board.firstClick);



    

    return (ans);   
}
