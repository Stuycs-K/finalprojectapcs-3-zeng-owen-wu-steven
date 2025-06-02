class Level{
    Board board;
    int minesLeft;
    int xOffest;
    int yOffset;
    

    public Level(Board board, int remainingMines){
        this.board = board;
        this.minesLeft = remainingMines;
        this.xOffest = 270;
        this.yOffset = 180;
    }
    
    
    void click(int x, int y){ // 30 is tile magnification
        int r = (width-xOffset) / 30 ;
        int c = (height-yOffset) / 30;
        
        if(r > 0 && c > 0 && r < board.length && c < board[0].length){ 
            Tile current = board.board[r][c];
        }
        board.revealTile(r,c);
        
        
    }
    void chord(int x, int y){
        int r = (width-xOffset) / 30 ;
        int c = (height-yOffset) / 30;
        Tile current;
        int surondCount = 0;
        
        if(r > 0 && c > 0 && r < board.length && c < board[0].length){ 
            Tile current = board.board[r][c];
        }
        if(current.isRevealed()){

            for(int i  = -1; i <= 1; i++){
                for (int j = -1; j <= 1; j++){
                    if(i > 0 && j > 0 && i < board.length && j < board[0].length){
                        if(board.board[i][j].isFlagged()){
                            count ++;
                        }
                    }

                }
            }

            if(count == current.neighborCount){
                for(int i  = -1; i <= 1; i++){
                    for (int j = -1; j <= 1; j++){
                        if(i > 0 && j > 0 && i < board.length && j < board[0].length){
                            if(! board.board[i][j].isFlagged()){
                                board.board[i][j].revealTile();
                            }
                        }

                    }
                }
            }
        }

    }

    void flagTile(int x, int y){
        int r = (width-xOffset) / 30 ;
        int c = (height-yOffset) / 30;
        Tile current;
        
        if(r > 0 && c > 0 && r < board.length && c < board[0].length){ 
            Tile current = board.board[r][c];
        }
        current.setFlag(true);
    }

    boolean checkWin(){
        return board.gameState;

    }
    void win(){
        
    }
    void lose(){
        for(int i = 0; i < board.board.length; i++){
            for(int j =0; j < board.board[0].length; j++){
                if(board.board[i][j].isMine()){
                    board.board[i][j].revealTile();
                }
            }
        }

    }
    //void clickButton(Button button){
    //    button.function();
    //}

    void draw(){
      board.draw();
    }

}
