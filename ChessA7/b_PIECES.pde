public abstract class PIECE{
  int column; //column where is the piece
  int row;    //row where is the piece
  boolean Color; //Piece's color: true-white , false-black
  boolean Selection;  // indicate if the piece have be selected
  boolean Active; //indicate if the piece is in the board
  PImage w; //Piece's image
}

class PAWN extends PIECE{
  void move (  int r,int c,int x,int y){
      if(  Selection && x == column){
        if(Color){
          if(row+1 == y){board1.change_square(r,c,y,x); row=y; column=x; board1.player=!board1.player;}
          if(row==1 && y==3){board1.change_square(r,c,y,x); row=y; column=x;board1.player=!board1.player;}
        }else{
          if(row-1 == y){board1.change_square(r,c,y,x); row=y; column=x;board1.player=!board1.player;}
          if(row==6 && y==4){board1.change_square(r,c,y,x); row=y; column=x;board1.player=!board1.player;}
        }
    }
  }
  void capture_right (boolean P,     int r,int c,int x,int y){
      if(P &&   Selection){
        if(Color){if(row+1==y && column+1==x){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x;board1.player=!board1.player;}
        }else{if(row-1==y && column+1==x){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x;board1.player=!board1.player;}}
    }
  }
  void capture_left (boolean P,    int r,int c,int x,int y){
      if(P &&   Selection){
        if(Color){if(row+1==y && column-1==x){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x;board1.player=!board1.player;}
        }else{if(row-1==y && column-1==x){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x;board1.player=!board1.player;}}
    }
  }
  void paint_piece(){
    if(Color){w = loadImage("piezasNeo/wp.png");}else{w = loadImage("piezasNeo/bp.png");}
    if(Active){image(w,(height/10+(column)*height/9.05),(height/20+(7-row)*height/9.05),height/9,height/9);}
  }
}

class KNIGHT extends PIECE{
  void move (   int r,int c,int x,int y){
     if(  Selection){
      if(row+2==y && column+1==x){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x; board1.player=!board1.player;}
      if(row+1==y && column+2==x){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x; board1.player=!board1.player;}
      if(row-1==y && column+2==x){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x; board1.player=!board1.player;}
      if(row-2==y && column+1==x){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x; board1.player=!board1.player;}
      if(row-2==y && column-1==x){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x; board1.player=!board1.player;}
      if(row-1==y && column-2==x){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x; board1.player=!board1.player;}
      if(row+1==y && column-2==x){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x; board1.player=!board1.player;}
      if(row+2==y && column-1==x){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x; board1.player=!board1.player;}
    }
  }
  void paint_piece(){
    if(Color){w = loadImage("piezasNeo/wn.png");}else{w = loadImage("piezasNeo/bn.png");}
    if(Active){image(w,(height/10+(column)*height/9.05),(height/20+(7-row)*height/9.05),height/9,height/9);}
  }
}

class BISHOP extends PIECE{
  void move (    int r,int c,int x,int y){
     if(  Selection){
        int j=column;
        int i=row;
        while(i<=7 && j<=7){
          i++; j++;
          if(i==y && j==x){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x; i=8; board1.player=!board1.player;}     
        }
        j=column; i=row;
        while(i<=7 && j>=0){
          i++; j--;
          if(i==y && j==x){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x; i=8; board1.player=!board1.player;}    
        }
        j=column; i=row;
        while(i>=0 && j<=7){
          i--; j++;
          if(i==y && j==x){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x; i=-1; board1.player=!board1.player;}
        }
        j=column; i=row;
        while(i>=0 && j>=0){
          i--; j--;
          if(i==y && j==x){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x; i=-1; board1.player=!board1.player;}      
        }
     }
  }
  void paint_piece(){
    if(Color){w = loadImage("piezasNeo/wb.png");}else{w = loadImage("piezasNeo/bb.png");}
    if(Active){image(w,(height/10+(column)*height/9.05),(height/20+(7-row)*height/9.05),height/9,height/9);}
  }
}

class ROOK extends PIECE{
  boolean Iposition=true;
  void move (    int r,int c,int x,int y){
     if(  Selection){
        for(int i=row+1; i<=7; i++){
          if(i==y && column==x){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x; board1.player=!board1.player;Iposition=false;}
        }
        for(int i=column+1; i<=7; i++){
          if(i==x && row==y){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x; board1.player=!board1.player;Iposition=false;}
        }
        for(int i=row-1; i>=0; i--){
          if(i==y && column==x){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x; board1.player=!board1.player;Iposition=false;}
        }
        for(int i=column-1; i>=0; i--){
          if(i==x && row==y){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x; board1.player=!board1.player;Iposition=false;}
        }
     }
  }
  void paint_piece(){
    if(Color){w = loadImage("piezasNeo/wr.png");}else{w = loadImage("piezasNeo/br.png");}
    if(Active){image(w,(height/10+(column)*height/9.05),(height/20+(7-row)*height/9.05),height/9,height/9);}
  }
}

class QUEEN extends PIECE{
  void move (    int r,int c,int x,int y){
     if(  Selection){
        int j=column;
        int i=row;
        while(i<=7 && j<=7){
          i++; j++;
          if(i==y && j==x){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x; i=8; board1.player=!board1.player;}     
        }
        j=column; i=row;
        while(i<=7 && j>=0){
          i++; j--;
          if(i==y && j==x){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x; i=8; board1.player=!board1.player;}    
        }
        j=column; i=row;
        while(i>=0 && j<=7){
          i--; j++;
          if(i==y && j==x){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x; i=-1; board1.player=!board1.player;}
        }
        j=column; i=row;
        while(i>=0 && j>=0){
          i--; j--;
          if(i==y && j==x){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x; i=-1; board1.player=!board1.player;}      
        }
         for(int n=row+1; n<=7; n++){
          if(n==y && column==x){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x; board1.player=!board1.player;}
        }
        for(int n=column+1; n<=7; n++){
          if(n==x && row==y){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x; board1.player=!board1.player;}
        }
        for(int n=row-1; n>=0; n--){
          if(n==y && column==x){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x; board1.player=!board1.player;}
        }
        for(int n=column-1; n>=0; n--){
          if(n==x && row==y){board1.change_square(r,c,y,x); board1.deletePiece();  row=y; column=x; board1.player=!board1.player;}
        }
     }
  }
  void paint_piece(){
    if(Color){w = loadImage("piezasNeo/wq.png");}else{w = loadImage("piezasNeo/bq.png");}
    if(Active){image(w,(height/10+(column)*height/9.05),(height/20+(7-row)*height/9.05),height/9,height/9); board1.player=!board1.player;}
  }
}

class KING extends PIECE{
  boolean Iposition=true;
  void move (    int r,int c,int x,int y){
     if(  Selection){
        for(int i=-1;i<2;i++){
          if(y==row+i && (x==column-1 || x==column+0 || x==column+1) && !(i==0 && x==column)){
          board1.change_square(r,c,y,x); board1.deletePiece();  
         row=y; column=x; board1.player=!board1.player; Iposition=false;}
        }
     }
  }
  void paint_piece(){
    if(Color){w = loadImage("piezasNeo/wk.png");}else{w = loadImage("piezasNeo/bk.png");}
    if(Active){image(w,(height/10+(column)*height/9.05),(height/20+(7-row)*height/9.05),height/9,height/9);}
  }
}