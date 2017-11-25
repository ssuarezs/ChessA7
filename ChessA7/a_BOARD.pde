public class SQUARES{
  int status=0; //STATUS of SQUARE:  0-free , 1-white piece , 2-black piece
  int kind=0; //KIND of PIECE: 0-nothing , 1-pawn , 2-knight , 3-bishop , 4-rook , 5-queen , 6-king
}

class BOARD{  
  boolean playing=false;
  boolean rotate=true;
  boolean player;  
  boolean selected_piece;  
  int Irow=8, Icol=8, Frow=8, Fcol=8;
  
    KING Kw;     QUEEN Qw;    ROOK R1w;    ROOK R2w;      //creatation of the 32 pices
    BISHOP B1w;  BISHOP B2w;  KNIGHT N1w;  KNIGHT N2w;
    PAWN P1; PAWN P2; PAWN P3; PAWN P4; 
    PAWN P5; PAWN P6; PAWN P7; PAWN P8;
    
    KING Kb;     QUEEN Qb;    ROOK R1b;    ROOK R2b;
    BISHOP B1b;  BISHOP B2b;  KNIGHT N1b;  KNIGHT N2b;
    PAWN P1b; PAWN P2b; PAWN P3b; PAWN P4b; 
    PAWN P5b; PAWN P6b; PAWN P7b; PAWN P8b;     
    
    public SQUARES[][] board = new SQUARES[8][8];
    
    void draw_board(){
        color a=color(240); color b=color(110,150,50);
        if(Bteam==1){a=color(240);b=color(110,150,50,250);}
        if(Bteam==2){a=color(227,225,180);b=color(183,142,93,203);}
        if(Bteam==3){a=color(210,202,233);b=color(100,100,160,180);}
        if(Bteam==4){a=color(210);b=color(67,138,90,180);}
        fill(75); rect(height/14,height/150,height/8.5*8,height/8.2*8,10);
          for(int i=0 ; i<8 ; i++){
            for(int j=0 ; j<8 ; j++){
              if((j+i) % 2 == 0){fill(a);}else{fill(b);}
              noStroke(); rect((height/10+i*height/9.05),(height/50+j*height/9.05),height/9,height/9);
            }
          }
         if(playing){
                 fill(50); rect(210,550,300,30,8);
                 stroke(30); ellipse(300,565,20,20); ellipse(420,565,20,20); noStroke(); fill(150);
                 if(player){ellipse(300,565,16,16);}else{ellipse(420,565,16,16);}
                 fill(250);
                 textSize(20);
                 text("  PLAY:      WHITE         BLACK", 210,573);
             }
      }
    
    void c_Display(){
      P1.Dis(); P2.Dis(); P3.Dis(); P4.Dis(); 
      P5.Dis(); P6.Dis(); P7.Dis(); P8.Dis(); 
      Kw.Dis(); Qw.Dis(); R1w.Dis(); R2w.Dis(); 
      B1w.Dis(); B2w.Dis(); N1w.Dis(); N2w.Dis();
      P1b.Dis(); P2b.Dis(); P3b.Dis(); P4b.Dis(); 
      P5b.Dis(); P6b.Dis(); P7b.Dis(); P8b.Dis(); 
      Kb.Dis(); Qb.Dis(); R1b.Dis(); R2b.Dis(); 
      B1b.Dis(); B2b.Dis(); N1b.Dis(); N2b.Dis();

    }     
    
    void default_position(){ //this method declarate each piece and them inicial position, color and other properties
    selected_piece=false; 
    player=true;
      Kw = new KING(); Kw.column=4; Kw.row=0; Kw.Color=true; Kw.Selection=false; Kw.Active=true;
      Qw = new QUEEN(); Qw.column=3; Qw.row=0; Qw.Color=true; Qw.Selection=false; Qw.Active=true; 
      R1w = new ROOK(); R1w.column=0; R1w.row=0; R1w.Color=true; R1w.Selection=false; R1w.Active=true;  
      R2w = new ROOK(); R2w.column=7; R2w.row=0; R2w.Color=true; R2w.Selection=false; R2w.Active=true;  
      B1w = new BISHOP(); B1w.column=2; B1w.row=0; B1w.Color=true; B1w.Selection=false; B1w.Active=true;  
      B2w = new BISHOP(); B2w.column=5; B2w.row=0; B2w.Color=true; B2w.Selection=false; B2w.Active=true;  
      N1w = new KNIGHT(); N1w.column=1; N1w.row=0; N1w.Color=true; N1w.Selection=false; N1w.Active=true;  
      N2w = new KNIGHT(); N2w.column=6; N2w.row=0; N2w.Color=true; N2w.Selection=false; N2w.Active=true;  
      P1 = new PAWN(); P1.column=0; P1.row=1; P1.Color=true; P1.Selection=false; P1.Active=true;
      P2 = new PAWN(); P2.column=1; P2.row=1; P2.Color=true; P2.Selection=false; P2.Active=true;
      P3 = new PAWN(); P3.column=2; P3.row=1; P3.Color=true; P3.Selection=false; P3.Active=true;
      P4 = new PAWN(); P4.column=3; P4.row=1; P4.Color=true; P4.Selection=false; P4.Active=true;
      P5 = new PAWN(); P5.column=4; P5.row=1; P5.Color=true; P5.Selection=false; P5.Active=true;
      P6 = new PAWN(); P6.column=5; P6.row=1; P6.Color=true; P6.Selection=false; P6.Active=true;
      P7 = new PAWN(); P7.column=6; P7.row=1; P7.Color=true; P7.Selection=false; P7.Active=true;
      P8 = new PAWN(); P8.column=7; P8.row=1; P8.Color=true; P8.Selection=false; P8.Active=true;
      
      Kb = new KING(); Kb.column=4; Kb.row=7; Kb.Color=false; Kb.Selection=false; Kb.Active=true;
      Qb = new QUEEN(); Qb.column=3; Qb.row=7; Qb.Color=false; Qb.Selection=false; Qb.Active=true; 
      R1b = new ROOK(); R1b.column=0; R1b.row=7; R1b.Color=false; R1b.Selection=false; R1b.Active=true;  
      R2b = new ROOK(); R2b.column=7; R2b.row=7; R2b.Color=false; R2b.Selection=false; R2b.Active=true;  
      B1b = new BISHOP(); B1b.column=2; B1b.row=7; B1b.Color=false; B1b.Selection=false; B1b.Active=true;  
      B2b = new BISHOP(); B2b.column=5; B2b.row=7; B2b.Color=false; B2b.Selection=false; B2b.Active=true;  
      N1b = new KNIGHT(); N1b.column=1; N1b.row=7; N1b.Color=false; N1b.Selection=false; N1b.Active=true;  
      N2b = new KNIGHT(); N2b.column=6; N2b.row=7; N1b.Color=false; N2b.Selection=false; N2b.Active=true;  
      P1b = new PAWN(); P1b.column=0; P1b.row=6; P1b.Color=false; P1b.Selection=false; P1b.Active=true;
      P2b = new PAWN(); P2b.column=1; P2b.row=6; P2b.Color=false; P2b.Selection=false; P2b.Active=true;
      P3b = new PAWN(); P3b.column=2; P3b.row=6; P3b.Color=false; P3b.Selection=false; P3b.Active=true;
      P4b = new PAWN(); P4b.column=3; P4b.row=6; P4b.Color=false; P4b.Selection=false; P4b.Active=true;
      P5b = new PAWN(); P5b.column=4; P5b.row=6; P5b.Color=false; P5b.Selection=false; P5b.Active=true;
      P6b = new PAWN(); P6b.column=5; P6b.row=6; P6b.Color=false; P6b.Selection=false; P6b.Active=true;
      P7b = new PAWN(); P7b.column=6; P7b.row=6; P7b.Color=false; P7b.Selection=false; P7b.Active=true;
      P8b = new PAWN(); P8b.column=7; P8b.row=6; P8b.Color=false; P8b.Selection=false; P8b.Active=true;
      
        for(int i = 0 ; i < 8 ; i++ ){
          for(int j = 0 ; j < 8 ; j++ ){
            board[i][j] = new SQUARES();
            board[i][j].status=0;
            board[i][j].kind=0;
          }
        }
      board[0][0].status=1; board[0][0].kind=4; board[0][1].status=1; board[0][1].kind=2;
      board[0][2].status=1; board[0][2].kind=3; board[0][3].status=1; board[0][3].kind=5;
      board[0][4].status=1; board[0][4].kind=6; board[0][5].status=1; board[0][5].kind=3;
      board[0][6].status=1; board[0][6].kind=2; board[0][7].status=1; board[0][7].kind=4;
      board[1][0].status=1; board[1][0].kind=1; board[1][1].status=1; board[1][1].kind=1;
      board[1][2].status=1; board[1][2].kind=1; board[1][3].status=1; board[1][3].kind=1;
      board[1][4].status=1; board[1][4].kind=1; board[1][5].status=1; board[1][5].kind=1;
      board[1][6].status=1; board[1][6].kind=1; board[1][7].status=1; board[1][7].kind=1;
      board[6][0].status=2; board[6][0].kind=1; board[6][1].status=2; board[6][1].kind=1;
      board[6][2].status=2; board[6][2].kind=1; board[6][3].status=2; board[6][3].kind=1;
      board[6][4].status=2; board[6][4].kind=1; board[6][5].status=2; board[6][5].kind=1;
      board[6][6].status=2; board[6][6].kind=1; board[6][7].status=2; board[6][7].kind=1;
      board[7][0].status=2; board[7][0].kind=4; board[7][1].status=2; board[7][1].kind=2;
      board[7][2].status=2; board[7][2].kind=3; board[7][3].status=2; board[7][3].kind=5;
      board[7][4].status=2; board[7][4].kind=6; board[7][5].status=2; board[7][5].kind=3;
      board[7][6].status=2; board[7][6].kind=2; board[7][7].status=2; board[7][7].kind=4;
      
      c_Display();
      Animation();
    }   
   
    void drawPieces(){ // paint all pieces in them own position
      P1.paint_piece(); P2.paint_piece(); P3.paint_piece(); P4.paint_piece(); 
      P5.paint_piece(); P6.paint_piece(); P7.paint_piece(); P8.paint_piece(); 
      Kw.paint_piece(); Qw.paint_piece(); R1w.paint_piece(); R2w.paint_piece(); 
      B1w.paint_piece(); B2w.paint_piece(); N1w.paint_piece(); N2w.paint_piece(); 
      P1b.paint_piece(); P2b.paint_piece(); P3b.paint_piece(); P4b.paint_piece(); 
      P5b.paint_piece(); P6b.paint_piece(); P7b.paint_piece(); P8b.paint_piece();
      Kb.paint_piece(); Qb.paint_piece(); R1b.paint_piece(); R2b.paint_piece(); 
      B1b.paint_piece(); B2b.paint_piece(); N1b.paint_piece(); N2b.paint_piece();
   } 
   
      
   void move_piece(int r, int c, int y, int x){
     boolean avalibleSquare=false;
     boolean avalibleRoad=true;
     boolean pcap_r=false;
     boolean pcap_l=false;
     int j=r;
     int i=c;
     if(board[r][c].kind==3){   if(x>c && y>r){ while(i+1<x && j+1<y){i++; j++; if(board[j][i].status!=0){avalibleRoad=false;} } j=r; i=c;}
                                if(x>c && y<r){ while(i+1<x && j-1>y){i++; j--; if(board[j][i].status!=0){avalibleRoad=false;} } j=r; i=c;}
                                if(x<c && y>r){ while(i-1>x && j+1<y){i--; j++; if(board[j][i].status!=0){avalibleRoad=false;} } j=r; i=c;}
                                if(x<c && y<r){ while(i-1>x && j-1>y){i--; j--; if(board[j][i].status!=0){avalibleRoad=false;} } j=r; i=c;}   }     
     if(board[r][c].kind==4){   if(x>c && y==r){ while(i+1<x){i++; if(board[j][i].status!=0){avalibleRoad=false;} } j=r; i=c;}
                                if(x<c && y==r){ while(i-1>x){i--; if(board[j][i].status!=0){avalibleRoad=false;} } j=r; i=c;}
                                if(y>r && x==c){ while(j+1<y){j++; if(board[j][i].status!=0){avalibleRoad=false;} } j=r; i=c;}
                                if(y<r && x==c){ while(j-1>y){j--; if(board[j][i].status!=0){avalibleRoad=false;} } j=r; i=c;}   }
     if(board[r][c].kind==5){   if(x>c && y>r){ while(i+1<x && j+1<y){i++; j++; if(board[j][i].status!=0){avalibleRoad=false;} } j=r; i=c;}
                                if(x>c && y<r){ while(i+1<x && j-1>y){i++; j--; if(board[j][i].status!=0){avalibleRoad=false;} } j=r; i=c;}
                                if(x<c && y>r){ while(i-1>x && j+1<y){i--; j++; if(board[j][i].status!=0){avalibleRoad=false;} } j=r; i=c;}
                                if(x<c && y<r){ while(i-1>x && j-1>y){i--; j--; if(board[j][i].status!=0){avalibleRoad=false;} } j=r; i=c;}   
                                if(x>c && y==r){ while(i+1<x){i++; if(board[j][i].status!=0){avalibleRoad=false;} } j=r; i=c;}
                                if(x<c && y==r){ while(i-1>x){i--; if(board[j][i].status!=0){avalibleRoad=false;} } j=r; i=c;}
                                if(y>r && x==c){ while(j+1<y){j++; if(board[j][i].status!=0){avalibleRoad=false;} } j=r; i=c;}
                                if(y<r && x==c){ while(j-1>y){j--; if(board[j][i].status!=0){avalibleRoad=false;} } j=r; i=c;}    }
     if(board[r][c].kind==1){ if(c<=6 && board[r][c].status==1 && board[r+1][c+1].status==2 && y==r+1 && x==c+1){pcap_r=true;}
                              if(c>=1 && board[r][c].status==1 && board[r+1][c-1].status==2 && y==r+1 && x==c-1){pcap_l=true;}
                              if(c<=6 && board[r][c].status==2 && board[r-1][c+1].status==1 && y==r-1 && x==c+1){pcap_r=true;}
                              if(c>=1 && board[r][c].status==2 && board[r-1][c-1].status==1 && y==r-1 && x==c-1){pcap_l=true;}
                              if(!pcap_r && !pcap_l && board[r][c].status==1 && board[r+1][c].status!=0 ){avalibleRoad=false;}  
                              if(!pcap_r && !pcap_l && board[r][c].status==2 && board[r-1][c].status!=0 ){avalibleRoad=false;}
                              if(!pcap_r && !pcap_l && board[r][c].status==1 && board[r+2][c].status!=0 && r==1 && y==3){avalibleRoad=false;}
                              if(!pcap_r && !pcap_l && board[r][c].status==2 && board[r-2][c].status!=0 && r==6 && y==4){avalibleRoad=false;} 
                              if(!pcap_r && !pcap_l && board[r][c].status==1 && y > r+2 &&  r==1){avalibleRoad=false;}     }

     if(board[r][c].status!=0 && board[r][c].status!=board[y][x].status){avalibleSquare=true;}
       
     if(avalibleRoad && avalibleSquare){ 
       
       if(player){
          P1.move( r,c,x,y); P2.move( r,c,x,y); P3.move( r,c,x,y); P4.move( r,c,x,y); 
          P5.move( r,c,x,y); P6.move( r,c,x,y); P7.move( r,c,x,y); P8.move( r,c,x,y); 
          Kw.move( r,c,x,y); Qw.move( r,c,x,y); R1w.move( r,c,x,y); R2w.move( r,c,x,y); 
          B1w.move( r,c,x,y); B2w.move( r,c,x,y); N1w.move( r,c,x,y); N2w.move( r,c,x,y); 
          P1.capture_right(pcap_r, r,c,x,y);P1.capture_left(pcap_l, r,c,x,y);
          P2.capture_right(pcap_r, r,c,x,y);P2.capture_left(pcap_l, r,c,x,y);
          P3.capture_right(pcap_r, r,c,x,y);P3.capture_left(pcap_l, r,c,x,y);
          P4.capture_right(pcap_r, r,c,x,y);P4.capture_left(pcap_l, r,c,x,y);
          P5.capture_right(pcap_r, r,c,x,y);P5.capture_left(pcap_l, r,c,x,y);
          P6.capture_right(pcap_r, r,c,x,y);P6.capture_left(pcap_l, r,c,x,y);
          P7.capture_right(pcap_r, r,c,x,y);P7.capture_left(pcap_l, r,c,x,y);
          P8.capture_right(pcap_r, r,c,x,y);P8.capture_left(pcap_l, r,c,x,y);
       }else{
          P1b.move( r,c,x,y); P2b.move( r,c,x,y); P3b.move( r,c,x,y); P4b.move( r,c,x,y); 
          P5b.move( r,c,x,y); P6b.move( r,c,x,y); P7b.move( r,c,x,y); P8b.move( r,c,x,y);
          Kb.move( r,c,x,y); Qb.move( r,c,x,y); R1b.move( r,c,x,y); R2b.move( r,c,x,y); 
          B1b.move( r,c,x,y); B2b.move( r,c,x,y); N1b.move( r,c,x,y); N2b.move( r,c,x,y);
          P1b.capture_right(pcap_r, r,c,x,y);P1b.capture_left(pcap_l, r,c,x,y);
          P2b.capture_right(pcap_r, r,c,x,y);P2b.capture_left(pcap_l, r,c,x,y);
          P3b.capture_right(pcap_r, r,c,x,y);P3b.capture_left(pcap_l, r,c,x,y);
          P4b.capture_right(pcap_r, r,c,x,y);P4b.capture_left(pcap_l, r,c,x,y);
          P5b.capture_right(pcap_r, r,c,x,y);P5b.capture_left(pcap_l, r,c,x,y);
          P6b.capture_right(pcap_r, r,c,x,y);P6b.capture_left(pcap_l, r,c,x,y);
          P7b.capture_right(pcap_r, r,c,x,y);P7b.capture_left(pcap_l, r,c,x,y);
          P8b.capture_right(pcap_r, r,c,x,y);P8b.capture_left(pcap_l, r,c,x,y);
       }
     }
    }
    
    void change_square(int r,int c,int y,int x){ 
       board[y][x].status = board[r][c].status;
       board[y][x].kind = board[r][c].kind;
       board[r][c].status = 0;
       board[r][c].kind = 0;     
    }
    
    void selectPiece(){
      if(Kw.row==Irow && Kw.column==Icol && Kw.Active){Kw.Selection=true;}    if(Qw.row==Irow && Qw.column==Icol && Qw.Active){Qw.Selection=true;}
      if(R1w.row==Irow && R1w.column==Icol && R1w.Active){R1w.Selection=true;} if(R2w.row==Irow && R2w.column==Icol && R2w.Active){R2w.Selection=true;}
      if(B1w.row==Irow && B1w.column==Icol && B1w.Active){B1w.Selection=true;} if(B2w.row==Irow && B2w.column==Icol && B2w.Active){B2w.Selection=true;}
      if(N1w.row==Irow && N1w.column==Icol && N1w.Active){N1w.Selection=true;} if(N2w.row==Irow && N2w.column==Icol && N2w.Active){N2w.Selection=true;}
      if(P1.row==Irow && P1.column==Icol && P1.Active){P1.Selection=true;}    if(P2.row==Irow && P2.column==Icol && P2.Active){P2.Selection=true;}
      if(P3.row==Irow && P3.column==Icol && P3.Active){P3.Selection=true;}    if(P4.row==Irow && P4.column==Icol && P4.Active){P4.Selection=true;}
      if(P5.row==Irow && P5.column==Icol && P5.Active){P5.Selection=true;}    if(P6.row==Irow && P6.column==Icol && P6.Active){P6.Selection=true;}
      if(P7.row==Irow && P7.column==Icol && P7.Active){P7.Selection=true;}    if(P8.row==Irow && P8.column==Icol && P8.Active){P8.Selection=true;}
      
      if(Kb.row==Irow && Kb.column==Icol && Kb.Active){Kb.Selection=true;}    if(Qb.row==Irow && Qb.column==Icol && Qb.Active){Qb.Selection=true;}
      if(R1b.row==Irow && R1b.column==Icol && R1b.Active){R1b.Selection=true;} if(R2b.row==Irow && R2b.column==Icol && R2b.Active){R2b.Selection=true;}
      if(B1b.row==Irow && B1b.column==Icol && B1b.Active){B1b.Selection=true;} if(B2b.row==Irow && B2b.column==Icol && B2b.Active){B2b.Selection=true;}
      if(N1b.row==Irow && N1b.column==Icol && N1b.Active){N1b.Selection=true;} if(N2b.row==Irow && N2b.column==Icol && N2b.Active){N2b.Selection=true;}
      if(P1b.row==Irow && P1b.column==Icol && P1b.Active){P1b.Selection=true;}    if(P2b.row==Irow && P2b.column==Icol && P2b.Active){P2b.Selection=true;}
      if(P3b.row==Irow && P3b.column==Icol && P3b.Active){P3b.Selection=true;}    if(P4b.row==Irow && P4b.column==Icol && P4b.Active){P4b.Selection=true;}
      if(P5b.row==Irow && P5b.column==Icol && P5b.Active){P5b.Selection=true;}    if(P6b.row==Irow && P6b.column==Icol && P6b.Active){P6b.Selection=true;}
      if(P7b.row==Irow && P7b.column==Icol && P7b.Active){P7b.Selection=true;}    if(P8b.row==Irow && P8b.column==Icol && P8b.Active){P8b.Selection=true;}
     
    }
    
    void deselect(){
    Kw.Selection=false; Qw.Selection=false; R1w.Selection=false; R2w.Selection=false;
    B1w.Selection=false; B2w.Selection=false; N1w.Selection=false; N2w.Selection=false;
    P1.Selection=false; P3.Selection=false;  P5.Selection=false; P7.Selection=false;
    P2.Selection=false; P4.Selection=false; P6.Selection=false; P8.Selection=false;
    Kb.Selection=false; Qb.Selection=false; R1b.Selection=false; R2b.Selection=false;
    B1b.Selection=false; B2b.Selection=false; N1b.Selection=false; N2b.Selection=false;
    P1b.Selection=false; P3b.Selection=false; P5b.Selection=false; P7b.Selection=false;
    P2b.Selection=false; P4b.Selection=false; P6b.Selection=false; P8b.Selection=false;
    }
    
    void deletePiece(){
      if(Qw.row==Frow && Qw.column==Fcol ){ Qw.Active=false;}
      if(R1w.row==Frow && R1w.column==Fcol ){ R1w.Active=false;} if(R2w.row==Frow && R2w.column==Fcol ){ R2w.Active=false;}
      if(B1w.row==Frow && B1w.column==Fcol ){ B1w.Active=false;} if(B2w.row==Frow && B2w.column==Fcol ){ B2w.Active=false;}
      if(N1w.row==Frow && N1w.column==Fcol ){ N1w.Active=false;} if(N2w.row==Frow && N2w.column==Fcol ){ N2w.Active=false;}
      if(P1.row==Frow && P1.column==Fcol ){ P1.Active=false;}    if(P2.row==Frow && P2.column==Fcol ){ P2.Active=false;}
      if(P3.row==Frow && P3.column==Fcol ){ P3.Active=false;}    if(P4.row==Frow && P4.column==Fcol ){ P4.Active=false;}
      if(P5.row==Frow && P5.column==Fcol ){ P5.Active=false;}    if(P6.row==Frow && P6.column==Fcol ){ P6.Active=false;}
      if(P7.row==Frow && P7.column==Fcol ){ P7.Active=false;}    if(P8.row==Frow && P8.column==Fcol ){ P8.Active=false;}
      
      if(Qb.row==Frow && Qb.column==Fcol ){ Qb.Active=false;}
      if(R1b.row==Frow && R1b.column==Fcol ){ R1b.Active=false;} if(R2b.row==Frow && R2b.column==Fcol ){ R2b.Active=false;}
      if(B1b.row==Frow && B1b.column==Fcol ){ B1b.Active=false;} if(B2b.row==Frow && B2b.column==Fcol ){ B2b.Active=false;}
      if(N1b.row==Frow && N1b.column==Fcol ){ N1b.Active=false;} if(N2b.row==Frow && N2b.column==Fcol ){ N2b.Active=false;}
      if(P1b.row==Frow && P1b.column==Fcol ){ P1b.Active=false;}    if(P2b.row==Frow && P2b.column==Fcol ){ P2b.Active=false;}
      if(P3b.row==Frow && P3b.column==Fcol ){ P3b.Active=false;}    if(P4b.row==Frow && P4b.column==Fcol ){ P4b.Active=false;}
      if(P5b.row==Frow && P5b.column==Fcol ){ P5b.Active=false;}    if(P6b.row==Frow && P6b.column==Fcol ){ P6b.Active=false;}
      if(P7b.row==Frow && P7b.column==Fcol ){ P7b.Active=false;}    if(P8b.row==Frow && P8b.column==Fcol ){ P8b.Active=false;}
    }
    
   void Castle(int y, int x){
     
     if(player){
        if(Kw.Selection && x==6 && y==0 && Kw.Iposition && R2w.Iposition && board[0][6].status==0 && board[0][5].status==0){
        Kw.column=6; R2w.column=5; Kw.Iposition=false; R2w.Iposition=false; change_square(0,4,0,6); change_square(0,7,0,5); player=!player; R2w.Selection=true;} 
        if(Kw.Selection && x==2 && y==0 && Kw.Iposition && R2w.Iposition && board[0][1].status==0 && board[0][2].status==0 && board[0][3].status==0){
        Kw.column=2; R1w.column=3; Kw.Iposition=false; R1w.Iposition=false; change_square(0,4,0,2); change_square(0,0,0,3); player=!player; R1w.Selection=true;} 
     }else{
        if(Kb.Selection && x==6 && y==7 && Kb.Iposition && R2b.Iposition && board[7][6].status==0 && board[7][5].status==0){
        Kb.column=6; R2b.column=5; Kb.Iposition=false; R2b.Iposition=false; change_square(7,4,7,6); change_square(7,7,7,5); player=!player; R2b.Selection=true;} 
        if(Kb.Selection && x==2 && y==7 && Kb.Iposition && R2b.Iposition && board[7][1].status==0 && board[7][2].status==0 && board[7][3].status==0){
        Kb.column=2; R1b.column=3; Kb.Iposition=false; R1b.Iposition=false; change_square(7,4,7,2); change_square(7,0,7,3); player=!player; R1b.Selection=true;}
     }       
   }
   
   void Animation(){
      P1.Anim(); P2.Anim(); P3.Anim(); P4.Anim(); 
      P5.Anim(); P6.Anim(); P7.Anim(); P8.Anim(); 
      Kw.Anim(); Qw.Anim(); R1w.Anim(); R2w.Anim(); 
      B1w.Anim(); B2w.Anim(); N1w.Anim(); N2w.Anim();
      P1b.Anim(); P2b.Anim(); P3b.Anim(); P4b.Anim(); 
      P5b.Anim(); P6b.Anim(); P7b.Anim(); P8b.Anim(); 
      Kb.Anim(); Qb.Anim(); R1b.Anim(); R2b.Anim(); 
      B1b.Anim(); B2b.Anim(); N1b.Anim(); N2b.Anim();
   }
   
   void chang_data(int P, int R, int C, int  A){
     for(int i = 0 ; i < 8 ; i++ ){
          for(int j = 0 ; j < 8 ; j++ ){
            board[i][j] = new SQUARES();
            board[i][j].status=0;
            board[i][j].kind=0;
          }
        }
            if(P==1){ P1.row=R; P1.column=C; if(A==1){P1.Active=true;}else{P1.Active=false;}  board[R][C].status=1; board[R][C].kind=1;}    
            if(P==2){ P2.row=R; P2.column=C; if(A==1){P2.Active=true;}else{P2.Active=false;}  board[R][C].status=1; board[R][C].kind=1;}  
            if(P==3){ P3.row=R; P3.column=C; if(A==1){P3.Active=true;}else{P3.Active=false;}  board[R][C].status=1; board[R][C].kind=1;}
            if(P==4){ P4.row=R; P4.column=C; if(A==1){P4.Active=true;}else{P4.Active=false;}  board[R][C].status=1; board[R][C].kind=1;}    
            if(P==5){ P5.row=R; P5.column=C; if(A==1){P5.Active=true;}else{P5.Active=false;}  board[R][C].status=1; board[R][C].kind=1;}  
            if(P==6){ P6.row=R; P6.column=C; if(A==1){P6.Active=true;}else{P6.Active=false;} board[R][C].status=1; board[R][C].kind=1;}
            if(P==7){ P7.row=R; P7.column=C; if(A==1){P7.Active=true;}else{P7.Active=false;}  board[R][C].status=1; board[R][C].kind=1;}  
            if(P==8){ P8.row=R; P8.column=C; if(A==1){P8.Active=true;}else{P8.Active=false;}  board[R][C].status=1; board[R][C].kind=1;}            
            if(P==12){ N1w.row=R; N1w.column=C; if(A==1){N1w.Active=true;}else{N1w.Active=false;}  board[R][C].status=1; board[R][C].kind=2;}    
            if(P==17){ N2w.row=R; N2w.column=C; if(A==1){N2w.Active=true;}else{N2w.Active=false;}  board[R][C].status=1; board[R][C].kind=2;}
            if(P==13){ B1w.row=R; B1w.column=C; if(A==1){B1w.Active=true;}else{B1w.Active=false;}  board[R][C].status=1; board[R][C].kind=3;}    
            if(P==16){ B2w.row=R; B2w.column=C; if(A==1){B2w.Active=true;}else{B2w.Active=false;}  board[R][C].status=1; board[R][C].kind=3;}
            if(P==11){ R1w.row=R; R1w.column=C; if(A==1){R1w.Active=true;}else{R1w.Active=false;}  board[R][C].status=1; board[R][C].kind=4;}    
            if(P==18){ R2w.row=R; R2w.column=C; if(A==1){R2w.Active=true;}else{R2w.Active=false;}  board[R][C].status=1; board[R][C].kind=4;}
            if(P==15){ Kw.row=R; Kw.column=C; if(A==1){Kw.Active=true;}else{Kw.Active=false;}  board[R][C].status=1; board[R][C].kind=6;}    
            if(P==14){ Qw.row=R; Qw.column=C; if(A==1){Qw.Active=true;}else{Qw.Active=false;}  board[R][C].status=1; board[R][C].kind=5;}
            
            if(P==21){ P1b.row=R; P1b.column=C; if(A==1){P1b.Active=true;}else{P1b.Active=false;}  board[R][C].status=2; board[R][C].kind=1;}    
            if(P==22){ P2b.row=R; P2b.column=C; if(A==1){P2b.Active=true;}else{P2b.Active=false;}  board[R][C].status=2; board[R][C].kind=1;}  
            if(P==23){ P3b.row=R; P3b.column=C; if(A==1){P3b.Active=true;}else{P3b.Active=false;}  board[R][C].status=2; board[R][C].kind=1;}
            if(P==24){ P4b.row=R; P4b.column=C; if(A==1){P4b.Active=true;}else{P4b.Active=false;}  board[R][C].status=2; board[R][C].kind=1;}    
            if(P==25){ P5b.row=R; P5b.column=C; if(A==1){P5b.Active=true;}else{P5b.Active=false;}  board[R][C].status=2; board[R][C].kind=1;}  
            if(P==26){ P6b.row=R; P6b.column=C; if(A==1){P6b.Active=true;}else{P6b.Active=false;}  board[R][C].status=2; board[R][C].kind=1;}
            if(P==27){ P7b.row=R; P7b.column=C; if(A==1){P7b.Active=true;}else{P7b.Active=false;}  board[R][C].status=2; board[R][C].kind=1; }  
            if(P==28){ P8b.row=R; P8b.column=C; if(A==1){P8b.Active=true;}else{P8b.Active=false;}    board[R][C].status=2; board[R][C].kind=1;}            
            if(P==32){ N1b.row=R; N1b.column=C; if(A==1){N1b.Active=true;}else{N1b.Active=false;}  board[R][C].status=2; board[R][C].kind=2;}    
            if(P==37){ N2b.row=R; N2b.column=C; if(A==1){N2b.Active=true;}else{N2b.Active=false;}  board[R][C].status=2; board[R][C].kind=2; }
            if(P==33){ B1b.row=R; B1b.column=C; if(A==1){B1b.Active=true;}else{B1b.Active=false;}  board[R][C].status=2; board[R][C].kind=3;}    
            if(P==36){ B2b.row=R; B2b.column=C; if(A==1){B2b.Active=true;}else{B2b.Active=false;}  board[R][C].status=2; board[R][C].kind=3;}
            if(P==31){ R1b.row=R; R1b.column=C; if(A==1){R1b.Active=true;}else{R1b.Active=false;}  board[R][C].status=2; board[R][C].kind=4;}    
            if(P==38){ R2b.row=R; R2b.column=C; if(A==1){R2b.Active=true;}else{R2b.Active=false;}  board[R][C].status=2; board[R][C].kind=4;}
            if(P==35){ Kb.row=R; Kb.column=C; if(A==1){Kb.Active=true;}else{Kb.Active=false;}  board[R][C].status=2; board[R][C].kind=6;}    
            if(P==34){ Qb.row=R; Qb.column=C; if(A==1){Qb.Active=true;}else{Qb.Active=false;}  board[R][C].status=2; board[R][C].kind=5;}
  
   }
   
   void man_pieces(){
     if(playing){
       if( selected_piece){
        if( rotate) {
            if(mouseX>(height/10)){ Fcol=0;}               if(mouseX>(height/10+height/9.05)){ Fcol=1;}
            if(mouseX>(height/10+2*height/9.05)){ Fcol=2;} if(mouseX>(height/10+3*height/9.05)){ Fcol=3;}
            if(mouseX>(height/10+4*height/9.05)){ Fcol=4;} if(mouseX>(height/10+5*height/9.05)){ Fcol=5;}
            if(mouseX>(height/10+6*height/9.05)){ Fcol=6;} if(mouseX>(height/10+7*height/9.05)){ Fcol=7;}
            if(mouseY>(height/50)){ Frow=7;}               if(mouseY>(height/50+height/9.05)){ Frow=6;}
            if(mouseY>(height/50+2*height/9.05)){ Frow=5;} if(mouseY>(height/50+3*height/9.05)){ Frow=4;}
            if(mouseY>(height/50+4*height/9.05)){ Frow=3;} if(mouseY>(height/50+5*height/9.05)){ Frow=2;}
            if(mouseY>(height/50+6*height/9.05)){ Frow=1;} if(mouseY>(height/50+7*height/9.05)){ Frow=0;}
          }else{
            if(mouseX>(height/10)){ Fcol=7;}               if(mouseX>(height/10+height/9.05)){ Fcol=6;}
            if(mouseX>(height/10+2*height/9.05)){ Fcol=5;} if(mouseX>(height/10+3*height/9.05)){ Fcol=4;}
            if(mouseX>(height/10+4*height/9.05)){ Fcol=3;} if(mouseX>(height/10+5*height/9.05)){ Fcol=2;}
            if(mouseX>(height/10+6*height/9.05)){ Fcol=1;} if(mouseX>(height/10+7*height/9.05)){ Fcol=0;}
            if(mouseY>(height/50)){ Frow=0;}               if(mouseY>(height/50+height/9.05)){ Frow=1;}
            if(mouseY>(height/50+2*height/9.05)){ Frow=2;} if(mouseY>(height/50+3*height/9.05)){ Frow=3;}
            if(mouseY>(height/50+4*height/9.05)){ Frow=4;} if(mouseY>(height/50+5*height/9.05)){ Frow=5;}
            if(mouseY>(height/50+6*height/9.05)){ Frow=6;} if(mouseY>(height/50+7*height/9.05)){ Frow=7;}
      }
         move_piece( Irow, Icol, Frow, Fcol);
         Castle( Frow, Fcol);
         deselect();   selected_piece=false;
         draw_sq_sel( Fcol, Frow);
         c_Display();
         Irow=8;   Icol=8;
         Frow=8;   Icol=8;
      
      }else{
      if( rotate) { 
        if(mouseX>(height/10)){ Icol=0;}               if(mouseX>(height/10+height/9.05)){ Icol=1;}
        if(mouseX>(height/10+2*height/9.05)){ Icol=2;} if(mouseX>(height/10+3*height/9.05)){ Icol=3;}
        if(mouseX>(height/10+4*height/9.05)){ Icol=4;} if(mouseX>(height/10+5*height/9.05)){ Icol=5;}
        if(mouseX>(height/10+6*height/9.05)){ Icol=6;} if(mouseX>(height/10+7*height/9.05)){ Icol=7;}
        if(mouseY>(height/50)){ Irow=7;}               if(mouseY>(height/50+height/9.05)){ Irow=6;}
        if(mouseY>(height/50+2*height/9.05)){ Irow=5;} if(mouseY>(height/50+3*height/9.05)){ Irow=4;}
        if(mouseY>(height/50+4*height/9.05)){ Irow=3;} if(mouseY>(height/50+5*height/9.05)){ Irow=2;}
        if(mouseY>(height/50+6*height/9.05)){ Irow=1;} if(mouseY>(height/50+7*height/9.05)){ Irow=0;}
      }else{
        if(mouseX>(height/10)){ Icol=7;}               if(mouseX>(height/10+height/9.05)){ Icol=6;}
        if(mouseX>(height/10+2*height/9.05)){ Icol=5;} if(mouseX>(height/10+3*height/9.05)){ Icol=4;}
        if(mouseX>(height/10+4*height/9.05)){ Icol=3;} if(mouseX>(height/10+5*height/9.05)){ Icol=2;}
        if(mouseX>(height/10+6*height/9.05)){ Icol=1;} if(mouseX>(height/10+7*height/9.05)){ Icol=0;}
        if(mouseY>(height/50)){ Irow=0;}               if(mouseY>(height/50+height/9.05)){ Irow=1;}
        if(mouseY>(height/50+2*height/9.05)){ Irow=2;} if(mouseY>(height/50+3*height/9.05)){ Irow=3;}
        if(mouseY>(height/50+4*height/9.05)){ Irow=4;} if(mouseY>(height/50+5*height/9.05)){ Irow=5;}
        if(mouseY>(height/50+6*height/9.05)){ Irow=6;} if(mouseY>(height/50+7*height/9.05)){ Irow=7;}
      }

        if(board[Irow][Icol].status!=0){
         selected_piece=true;
         selectPiece();}else{Icol=8;Irow=8;}
      } 
     } 
   }

   
}