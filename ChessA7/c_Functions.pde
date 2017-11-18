void draw_board(){
  fill(75); rect(height/14,height/45,height/8.5*8,height/8.5*8,10);
    for(int i=0 ; i<8 ; i++){
      for(int j=0 ; j<8 ; j++){
        if((j+i) % 2 == 0){fill(240);}else{fill(110,150,50);}
        noStroke(); rect((height/10+i*height/9.05),(height/20+j*height/9.05),height/9,height/9);
      }
    }
}

void draw_sq_sel(int x,int  y){
  if((x+y)%2==0){fill(180,180,40);}else{fill(220,220,40);}
  if(board1.rotate){
    if(x<8 && y<8){noStroke(); rect((height/10+x*height/9.05),(height/20+(7-y)*height/9.05),height/9,height/9);}
  }else{
    if(x<8 && y<8){noStroke(); rect((height/10+(7-x)*height/9.05),(height/20+y*height/9.05),height/9,height/9);}
  }
  
}

void mouseClicked() {
  if(mouseX<(height/10+8*height/9.05) && mouseX>(height/10) && mouseY<(height/20+8*height/9.05) && mouseY>(height/20)){
      if(board1.selected_piece){
        if(board1.rotate) {
            if(mouseX>(height/10)){board1.Fcol=0;}               if(mouseX>(height/10+height/9.05)){board1.Fcol=1;}
            if(mouseX>(height/10+2*height/9.05)){board1.Fcol=2;} if(mouseX>(height/10+3*height/9.05)){board1.Fcol=3;}
            if(mouseX>(height/10+4*height/9.05)){board1.Fcol=4;} if(mouseX>(height/10+5*height/9.05)){board1.Fcol=5;}
            if(mouseX>(height/10+6*height/9.05)){board1.Fcol=6;} if(mouseX>(height/10+7*height/9.05)){board1.Fcol=7;}
            if(mouseY>(height/20)){board1.Frow=7;}               if(mouseY>(height/20+height/9.05)){board1.Frow=6;}
            if(mouseY>(height/20+2*height/9.05)){board1.Frow=5;} if(mouseY>(height/20+3*height/9.05)){board1.Frow=4;}
            if(mouseY>(height/20+4*height/9.05)){board1.Frow=3;} if(mouseY>(height/20+5*height/9.05)){board1.Frow=2;}
            if(mouseY>(height/20+6*height/9.05)){board1.Frow=1;} if(mouseY>(height/20+7*height/9.05)){board1.Frow=0;}
          }else{
            if(mouseX>(height/10)){board1.Fcol=7;}               if(mouseX>(height/10+height/9.05)){board1.Fcol=6;}
            if(mouseX>(height/10+2*height/9.05)){board1.Fcol=5;} if(mouseX>(height/10+3*height/9.05)){board1.Fcol=4;}
            if(mouseX>(height/10+4*height/9.05)){board1.Fcol=3;} if(mouseX>(height/10+5*height/9.05)){board1.Fcol=2;}
            if(mouseX>(height/10+6*height/9.05)){board1.Fcol=1;} if(mouseX>(height/10+7*height/9.05)){board1.Fcol=0;}
            if(mouseY>(height/20)){board1.Frow=0;}               if(mouseY>(height/20+height/9.05)){board1.Frow=1;}
            if(mouseY>(height/20+2*height/9.05)){board1.Frow=2;} if(mouseY>(height/20+3*height/9.05)){board1.Frow=3;}
            if(mouseY>(height/20+4*height/9.05)){board1.Frow=4;} if(mouseY>(height/20+5*height/9.05)){board1.Frow=5;}
            if(mouseY>(height/20+6*height/9.05)){board1.Frow=6;} if(mouseY>(height/20+7*height/9.05)){board1.Frow=7;}
      }
        board1.move_piece(board1.Irow,board1.Icol,board1.Frow,board1.Fcol);
        board1.Castle(board1.Frow,board1.Fcol);
        board1.deselect();  board1.selected_piece=false;
        draw_sq_sel(board1.Fcol,board1.Frow);
        delay(50);  board1.c_Display();
        board1.Irow=8;  board1.Icol=8;
        board1.Frow=8;  board1.Icol=8;
      
      }else{
      if(board1.rotate) { 
        if(mouseX>(height/10)){board1.Icol=0;}               if(mouseX>(height/10+height/9.05)){board1.Icol=1;}
        if(mouseX>(height/10+2*height/9.05)){board1.Icol=2;} if(mouseX>(height/10+3*height/9.05)){board1.Icol=3;}
        if(mouseX>(height/10+4*height/9.05)){board1.Icol=4;} if(mouseX>(height/10+5*height/9.05)){board1.Icol=5;}
        if(mouseX>(height/10+6*height/9.05)){board1.Icol=6;} if(mouseX>(height/10+7*height/9.05)){board1.Icol=7;}
        if(mouseY>(height/20)){board1.Irow=7;}               if(mouseY>(height/20+height/9.05)){board1.Irow=6;}
        if(mouseY>(height/20+2*height/9.05)){board1.Irow=5;} if(mouseY>(height/20+3*height/9.05)){board1.Irow=4;}
        if(mouseY>(height/20+4*height/9.05)){board1.Irow=3;} if(mouseY>(height/20+5*height/9.05)){board1.Irow=2;}
        if(mouseY>(height/20+6*height/9.05)){board1.Irow=1;} if(mouseY>(height/20+7*height/9.05)){board1.Irow=0;}
      }else{
        if(mouseX>(height/10)){board1.Icol=7;}               if(mouseX>(height/10+height/9.05)){board1.Icol=6;}
        if(mouseX>(height/10+2*height/9.05)){board1.Icol=5;} if(mouseX>(height/10+3*height/9.05)){board1.Icol=4;}
        if(mouseX>(height/10+4*height/9.05)){board1.Icol=3;} if(mouseX>(height/10+5*height/9.05)){board1.Icol=2;}
        if(mouseX>(height/10+6*height/9.05)){board1.Icol=1;} if(mouseX>(height/10+7*height/9.05)){board1.Icol=0;}
        if(mouseY>(height/20)){board1.Irow=0;}               if(mouseY>(height/20+height/9.05)){board1.Irow=1;}
        if(mouseY>(height/20+2*height/9.05)){board1.Irow=2;} if(mouseY>(height/20+3*height/9.05)){board1.Irow=3;}
        if(mouseY>(height/20+4*height/9.05)){board1.Irow=4;} if(mouseY>(height/20+5*height/9.05)){board1.Irow=5;}
        if(mouseY>(height/20+6*height/9.05)){board1.Irow=6;} if(mouseY>(height/20+7*height/9.05)){board1.Irow=7;}
      }
        board1.selected_piece=true;
        board1.selectPiece();
      }
  }else{board1.selected_piece=false;}
} 