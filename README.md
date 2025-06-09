[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/YxXKqIeT)
# Project Description

This project is a clone of Minesweeper, with all of the basic mechanics. This includes flagging tiles, revealing tiles, board generation, and chording. We also have additional features, such as hints, allowing the user to select mine count, and a restart button. We also have an alternate mode, where tile counts(the number on revealed tiles that shows neighboring mines) are one higher or lower than its actual number.  
Video:
![Video Link](files/Final%20Minesweeper%20Video.mp4)
Sprites taken from ![Sprite Source](https://uchimama.itch.io/minesweeper-tileset)

# Intended usage:

When starting the game, the user will have a 16x16 board of tiles to play on, with a default minecount of 100.
A 3x3 radius of tiles around the tile that is clicked first will be safe.
The user will play until all safe tiles are revealed, where they win.
If the user reveals a mine, they lose.
If the user loses or wins, they are unable to modify the board.
The user can choose to recieve a hint if they get stuck. The board may require guessing.

## Controls:  

Left Click: Reveals unrevealed tile  
Middle Click - Multiclick/Chord: If the number on the revealed tile matches the amount of flagged neighbors, it will reveal all unrevealed, unflagged neighboring tiles.  
Right Click: (Un)flags unrevealed tile.

### Buttons: 
1. Restart Button: Create a new board, according to the set amount of mines.
2. Mine count slider: Click to (un)reveal a slider that ranges from 1-255. Allows user to set a specified amount of mines for the next board (when the board is reset). 
3. Hint: Flags an unflagged, unrevealed, mine bordering revealed tiles. Does nothing if no valid mines left to flag. 
4. Normal Count: Sets the board to normal count mode.
5. Alternate Count: Sets the board to misleading count mode.