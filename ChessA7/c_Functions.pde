

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
  if(Bteam==4){  if((x+y)%2==0){fill(67,138,90,250);}else{fill(240);}
                  if(board1.rotate){
                    if(x<8 && y<8){noStroke(); rect((height/10+x*height/9.05),(height/50+(7-y)*height/9.05),height/9,height/9,8);}
                  }else{
                    if(x<8 && y<8){noStroke(); rect((height/10+(7-x)*height/9.05),(height/50+y*height/9.05),height/9,height/9,8);}
                  }   }
  
}

void mouseClicked() {
  if(mouseX<(height/10+8*height/9.05) && mouseX>(height/10) && mouseY<(height/50+8*height/9.05) && mouseY>(height/50)){
      board1.man_pieces();
  }else{
        board1.deselect();  board1.selected_piece=false;
        board1.c_Display();
        board1.Irow=8;  board1.Icol=8;
        board1.Frow=8;  board1.Fcol=8;}
} 