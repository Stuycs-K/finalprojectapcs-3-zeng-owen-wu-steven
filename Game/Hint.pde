class Hint extends Button{

    Hint(int x, int y){
        super(x,y);

    }

    void function(){

        ArrayList<Tile> allTargets = new ArrayList<Tile>();

        for (int i = 0; i < level.board.board.length; i++) {
            nextTile:
            for (int j = 0; j < level.board.board[0].length; j++) {
                for (int di = -1; di <= 1; di++) {
                    for (int dj = -1; dj <= 1; dj++) {
                        if (di == 0 && dj == 0) {
                            continue;
                        }
                        int ni = i + di;
                        int nj = j + dj;
                
                        if (ni >= 0 && ni < level.board.board.length &&
                            nj >= 0 && nj < level.board.board[0].length &&
                            level.board.board[ni][nj].isRevealed() && 
                            level.board.board[i][j].isMine && 
                            !level.board.board[i][j].isFlagged) {
                                allTargets.add(level.board.board[i][j]);
                                continue nextTile;
                    
                        }
                    }
                }
            }
        }
        if(allTargets.size() > 0){
            Tile target = allTargets.get((int)(Math.random() * allTargets.size()));

            if(!target.isFlagged){
                level.flagTile(target.xCor, target.yCor);
            }
            
            
        }



    }

    void drawHint(){
        rect(xCor,yCor, 64,64);
        image(hintButton,xCor, yCor);
    }
}
