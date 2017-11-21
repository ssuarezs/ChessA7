

void draw_sq_sel(int x,int  y){
  strokeWeight(2);
  if(Bteam==1){  if((x+y)%2==0){fill(180,180,40);}else{fill(220,220,40);}
                  if(board1.rotate){
                    if(x<8 && y<8){noStroke(); rect((height/10+x*height/9.05),(height/50+(7-y)*height/9.05),height/9,height/9);}
                  }else{
                    if(x<8 && y<8){noStroke(); rect((height/10+(7-x)*height/9.05),(height/50+y*height/9.05),height/9,height/9);}
                  }   }
  if(Bteam==2){  if((x+y)%2==0){fill(183,142,93,203);}else{fill(227,225,180,250);}
                  if(board1.rotate){
                    if(x<8 && y<8){stroke(0); rect((height/10+x*height/9.05),(height/50+(7-y)*height/9.05),height/9,height/9,8); noStroke();}
                  }else{
                    if(x<8 && y<8){stroke(0); rect((height/10+(7-x)*height/9.05),(height/50+y*height/9.05),height/9,height/9,8);noStroke();}
                  }   }
  if(Bteam==3){  if((x+y)%2==0){fill(100,100,160,255);}else{fill(210,202,233,250);}
                  if(board1.rotate){
                    if(x<8 && y<8){stroke(70,70,130); rect((height/10+x*height/9.05),(height/50+(7-y)*height/9.05),height/9,height/9,8); noStroke();}
                  }else{
                    if(x<8 && y<8){stroke(70,70,130); rect((height/10+(7-x)*height/9.05),(height/50+y*height/9.05),height/9,height/9,8);noStroke();}
                  }   }
  if(Bteam==4){  if((x+y)%2==0){fill(67,138,90,250);}else{fill(200);}
                  if(board1.rotate){
                    if(x<8 && y<8){noStroke(); rect((height/10+x*height/9.05),(height/50+(7-y)*height/9.05),height/9,height/9,8);}
                  }else{
                    if(x<8 && y<8){noStroke(); rect((height/10+(7-x)*height/9.05),(height/50+y*height/9.05),height/9,height/9,8);}
                  }   }
  
}

void mouseClicked() {
  if(mouseX<(height/10+8*height/9.05) && mouseX>(height/10) && mouseY<(height/50+8*height/9.05) && mouseY>(height/50)){
      if(board1.selected_piece){
        if(board1.rotate) {
            if(mouseX>(height/10)){board1.Fcol=0;}               if(mouseX>(height/10+height/9.05)){board1.Fcol=1;}
            if(mouseX>(height/10+2*height/9.05)){board1.Fcol=2;} if(mouseX>(height/10+3*height/9.05)){board1.Fcol=3;}
            if(mouseX>(height/10+4*height/9.05)){board1.Fcol=4;} if(mouseX>(height/10+5*height/9.05)){board1.Fcol=5;}
            if(mouseX>(height/10+6*height/9.05)){board1.Fcol=6;} if(mouseX>(height/10+7*height/9.05)){board1.Fcol=7;}
            if(mouseY>(height/50)){board1.Frow=7;}               if(mouseY>(height/50+height/9.05)){board1.Frow=6;}
            if(mouseY>(height/50+2*height/9.05)){board1.Frow=5;} if(mouseY>(height/50+3*height/9.05)){board1.Frow=4;}
            if(mouseY>(height/50+4*height/9.05)){board1.Frow=3;} if(mouseY>(height/50+5*height/9.05)){board1.Frow=2;}
            if(mouseY>(height/50+6*height/9.05)){board1.Frow=1;} if(mouseY>(height/50+7*height/9.05)){board1.Frow=0;}
          }else{
            if(mouseX>(height/10)){board1.Fcol=7;}               if(mouseX>(height/10+height/9.05)){board1.Fcol=6;}
            if(mouseX>(height/10+2*height/9.05)){board1.Fcol=5;} if(mouseX>(height/10+3*height/9.05)){board1.Fcol=4;}
            if(mouseX>(height/10+4*height/9.05)){board1.Fcol=3;} if(mouseX>(height/10+5*height/9.05)){board1.Fcol=2;}
            if(mouseX>(height/10+6*height/9.05)){board1.Fcol=1;} if(mouseX>(height/10+7*height/9.05)){board1.Fcol=0;}
            if(mouseY>(height/50)){board1.Frow=0;}               if(mouseY>(height/50+height/9.05)){board1.Frow=1;}
            if(mouseY>(height/50+2*height/9.05)){board1.Frow=2;} if(mouseY>(height/50+3*height/9.05)){board1.Frow=3;}
            if(mouseY>(height/50+4*height/9.05)){board1.Frow=4;} if(mouseY>(height/50+5*height/9.05)){board1.Frow=5;}
            if(mouseY>(height/50+6*height/9.05)){board1.Frow=6;} if(mouseY>(height/50+7*height/9.05)){board1.Frow=7;}
      }
        board1.move_piece(board1.Irow,board1.Icol,board1.Frow,board1.Fcol);
        board1.Castle(board1.Frow,board1.Fcol);
        board1.deselect();  board1.selected_piece=false;
        draw_sq_sel(board1.Fcol,board1.Frow);
        board1.c_Display();
        board1.Irow=8;  board1.Icol=8;
        board1.Frow=8;  board1.Icol=8;
      
      }else{
      if(board1.rotate) { 
        if(mouseX>(height/10)){board1.Icol=0;}               if(mouseX>(height/10+height/9.05)){board1.Icol=1;}
        if(mouseX>(height/10+2*height/9.05)){board1.Icol=2;} if(mouseX>(height/10+3*height/9.05)){board1.Icol=3;}
        if(mouseX>(height/10+4*height/9.05)){board1.Icol=4;} if(mouseX>(height/10+5*height/9.05)){board1.Icol=5;}
        if(mouseX>(height/10+6*height/9.05)){board1.Icol=6;} if(mouseX>(height/10+7*height/9.05)){board1.Icol=7;}
        if(mouseY>(height/50)){board1.Irow=7;}               if(mouseY>(height/50+height/9.05)){board1.Irow=6;}
        if(mouseY>(height/50+2*height/9.05)){board1.Irow=5;} if(mouseY>(height/50+3*height/9.05)){board1.Irow=4;}
        if(mouseY>(height/50+4*height/9.05)){board1.Irow=3;} if(mouseY>(height/50+5*height/9.05)){board1.Irow=2;}
        if(mouseY>(height/50+6*height/9.05)){board1.Irow=1;} if(mouseY>(height/50+7*height/9.05)){board1.Irow=0;}
      }else{
        if(mouseX>(height/10)){board1.Icol=7;}               if(mouseX>(height/10+height/9.05)){board1.Icol=6;}
        if(mouseX>(height/10+2*height/9.05)){board1.Icol=5;} if(mouseX>(height/10+3*height/9.05)){board1.Icol=4;}
        if(mouseX>(height/10+4*height/9.05)){board1.Icol=3;} if(mouseX>(height/10+5*height/9.05)){board1.Icol=2;}
        if(mouseX>(height/10+6*height/9.05)){board1.Icol=1;} if(mouseX>(height/10+7*height/9.05)){board1.Icol=0;}
        if(mouseY>(height/50)){board1.Irow=0;}               if(mouseY>(height/50+height/9.05)){board1.Irow=1;}
        if(mouseY>(height/50+2*height/9.05)){board1.Irow=2;} if(mouseY>(height/50+3*height/9.05)){board1.Irow=3;}
        if(mouseY>(height/50+4*height/9.05)){board1.Irow=4;} if(mouseY>(height/50+5*height/9.05)){board1.Irow=5;}
        if(mouseY>(height/50+6*height/9.05)){board1.Irow=6;} if(mouseY>(height/50+7*height/9.05)){board1.Irow=7;}
      }

        board1.selected_piece=true;
        board1.selectPiece();
      }
  }else{
        board1.deselect();  board1.selected_piece=false;
        board1.c_Display();
        board1.Irow=8;  board1.Icol=8;
        board1.Frow=8;  board1.Icol=8;}
} 