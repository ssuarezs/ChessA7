import de.looksgood.ani.*;

BOARD board1;

void setup(){
  size(1200,600);
  background(60);
  board1 = new BOARD(); 
  board1.default_position();
  Ani.init(this);
  bot();
}


void draw(){
  background(60);
  board1.draw_board();
  draw_sq_sel(board1.Icol,board1.Irow);
  board1.drawPieces(); 
} 