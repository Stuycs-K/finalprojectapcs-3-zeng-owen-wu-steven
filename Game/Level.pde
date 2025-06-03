class Level{
    Board board;
    int minesLeft;
    int xOffset;
    int yOffset;
    

    public Level(Board board, int remainingMines){
        this.board = board;
        this.minesLeft = remainingMines;
        this.xOffset = 270;
        this.yOffset = 120;
    }
    
    
    void click(int x, int y){ // 30 is tile magnification
        int r = (x-xOffset) / 30 ;
        int c = (y-yOffset) / 30;

        if(board.firstClick){
            board.firstClick = !board.firstClick;
            println("first click");
            

            if(r >= 0 && c >= 0 && r < board.board.length && c < board.board[0].length){ 
                board.generate(r,c);
            }

            if(r >= 0 && c >= 0 && r < board.board.length && c < board.board[0].length){ 
                Tile current = board.board[r][c];

                // firstReveal(r,c);
                for(int i = -1; i <= 1; i++){
                    for(int j = -1; j <= 1; j++){
                        if(r + i >= 0 && c+j >= 0 && r+i < board.board.length && c+j < board.board[0].length){
                            board.revealTile(r+i,c+j);
                        }
                    }
                }
            }
            
        }
        else{
            if(r >= 0 && c >= 0 && r < board.board.length && c < board.board[0].length){ 
                Tile current = board.board[r][c];
            }
            board.revealTile(r,c);
        }
          
    }

    void firstReveal(int r, int c){
        if(board.board[r][c].isRevealed()){
            return ;
        }

        if(! board.board[r][c].isMine()){
            board.revealTile(r,c);

            int[] tempR = {-1,1,0,0};
            int[] tempC = {0,0, -1,1};

            for(int i = 0; i < 4; i++){
                int currentR = r+tempR[i];
                int currentC = c+tempC[i];


                if(currentR >= 0 && currentR < board.board.length && currentC >=0 && currentC < board.board[0].length){
                    firstReveal(currentR, currentC);
                }
            }
        }  
    }


    void chord(int x, int y){
        int r = (x-xOffset) / 30 ;
        int c = (y-yOffset) / 30;
        Tile current;
        int count = 0;
        
        if(r >= 0 && c >= 0 && r < board.board.length && c < board.board[0].length){ 
            current = board.board[r][c];
        
            if(current.isRevealed()){

                for(int i  = -1; i <= 1; i++){
                    for (int j = -1; j <= 1; j++){
                        if(r + i >= 0 && c + j >= 0 && r + i < board.board.length && c + j < board.board[0].length){
                            if(board.board[r + i][c + j].isFlagged()){
                                count++;
                            }
                        }

                    }
                }

                if(count == current.neighborCount){
                    for(int i  = -1; i <= 1; i++){
                        for (int j = -1; j <= 1; j++){
                            if(r + i >= 0 && c + j >= 0 && r + i < board.board.length && c + j < board.board[0].length){
                                if(! board.board[r +i][c + j].isFlagged()){
                                    board.revealTile(r + i, c + j);
                                }
                            }

                        }
                    }
                }
            }
        }

    }

    void flagTile(int x, int y){
        int r = (x-xOffset) / 30 ;
        int c = (y-yOffset) / 30;
        Tile current;
        
        if(r >= 0 && c >=  0 && r < board.board.length && c < board.board[0].length){ 
            current = board.board[r][c];
            current.setFlag(!current.isFlagged);
        }
    }

    void checkWin(){
        int flags = 0;

        for (int i = 0; i < board.board.length; i++){
            for(int j = 0; j < board.board[0].length; j++){
                if(board.board[i][j].isFlagged()){
                    flags++;
                }
            }
        }
        board.minesLeft = board.totalMines - flags;

        if(board.minesLeft == 0){
            board.gameState = 1;
        }

    }
    void win(){
        
    }
    void lose(){
        for(int i = 0; i < board.board.length; i++){
            for(int j =0; j < board.board[0].length; j++){
                if(board.board[i][j].isMine()){
                    board.revealTile(i,j);
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
