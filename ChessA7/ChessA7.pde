import de.looksgood.ani.*;

menu MENU;
OPE_W Opw;
SETTINGS CONF;
BOARD board1;
Opening Opens;

void setup(){
  size(1200,600);
  background(60);
  
  MENU = new menu();
  Opw = new OPE_W();
  CONF = new SETTINGS();
  board1 = new BOARD(); 
  Opens = new Opening();
  
  
  board1.default_position();
  Ani.init(this);
  bot(); 
  MENU.setp(); Opw.setp(); CONF.setp();
}


void draw(){
  background(60);
  board1.draw_board();  draw_sq_sel(board1.Icol,board1.Irow);
  board1.drawPieces();  
  CONF.dec(); Opw.dec(); MENU.dec();
  
} 