public abstract class PIECE{
  int column; //column where is the piece
  int row;    //row where is the piece
  boolean Color; //Piece's color: true-white , false-black
  boolean Selection;  // indicate if the piece have be selected
  boolean Active; //indicate if the piece is in the board
  PImage w; //Piece's image
}

class PAWN extends PIECE{
  void move (boolean R, int x, int y){
      if(R && Selection && x == column){
        if(Color){
          if(row+1 == y){row=y; column=x;}
          if(row==1 && y==3){row=y; column=x;}
        }else{
          if(row-1 == y){row=y; column=x;}
          if(row==6 && y==4){row=y; column=x;}
        }
    }
  }
  void capture_right (boolean P, boolean R, int x, int y){
      if(P && R && Selection){
        if(Color){if(row+1==y && column+1==x){row=y; column=x;}
        }else{if(row-1==y && column+1==x){row=y; column=x;}}
    }
  }
  void capture_left (boolean P, boolean R, int x, int y){
      if(P && R && Selection){
        if(Color){if(row+1==y && column-1==x){row=y; column=x;}
        }else{if(row-1==y && column-1==x){row=y; column=x;}}
    }
  }
  void paint_piece(){
    if(Color){w = loadImage("piezasNeo/wp.png");}else{w = loadImage("piezasNeo/bp.png");}
    if(Active){image(w,(height/10+(column)*height/9.05),(height/20+(7-row)*height/9.05),height/9,height/9);}
  }
}

class KNIGHT extends PIECE{
  void move (boolean R, int x, int y){
     if(R && Selection){
      if(row+2==y && column+1==x){row=y; column=x;}    if(row+1==y && column+2==x){row=y; column=x;}
      if(row-1==y && column+2==x){row=y; column=x;}    if(row-2==y && column+1==x){row=y; column=x;}
      if(row-2==y && column-1==x){row=y; column=x;}    if(row-1==y && column-2==x){row=y; column=x;}
      if(row+1==y && column-2==x){row=y; column=x;}    if(row+2==y && column-1==x){row=y; column=x;}
    }
  }
  void paint_piece(){
    if(Color){w = loadImage("piezasNeo/wn.png");}else{w = loadImage("piezasNeo/bn.png");}
    if(Active){image(w,(height/10+(column)*height/9.05),(height/20+(7-row)*height/9.05),height/9,height/9);}
  }
}

class BISHOP extends PIECE{
  void move (boolean R, int x, int y){
     if(R && Selection){
        int j=column;
        int i=row;
        while(i<8 && j<8){
          i++; j++;
          if(i==y && j==x){row=y; column=x; i=8;}     
        }
        j=column; i=row;
        while(i<8 && j>-1){
          i++; j--;
          if(i==y && j==x){row=y; column=x; i=8;}    
        }
        j=column; i=row;
        while(i>-1 && j<8){
          i--; j++;
          if(i==y && j==x){row=y; column=x; i=-1;}
        }
        j=column; i=row;
        while(i>-1 && j>-1){
          i--; j--;
          if(i==y && j==x){row=y; column=x; i=-1;}      
        }
     }
  }
  void paint_piece(){
    if(Color){w = loadImage("piezasNeo/wb.png");}else{w = loadImage("piezasNeo/bb.png");}
    if(Active){image(w,(height/10+(column)*height/9.05),(height/20+(7-row)*height/9.05),height/9,height/9);}
  }
}

class ROOK extends PIECE{
  void move (boolean R, int x, int y){
     if(R && Selection){
        for(int i=row+1; i<8; i++){
          if(i==y && column==x){row=y; column=x;}
        }
        for(int i=column+1; i<8; i++){
          if(i==x && row==y){row=y; column=x;}
        }
        for(int i=row-1; i>=0; i--){
          if(i==y && column==x){row=y; column=x;}
        }
        for(int i=column-1; i>=0; i--){
          if(i==x && row==y){row=y; column=x;}
        }
     }
  }
  void paint_piece(){
    if(Color){w = loadImage("piezasNeo/wr.png");}else{w = loadImage("piezasNeo/br.png");}
    if(Active){image(w,(height/10+(column)*height/9.05),(height/20+(7-row)*height/9.05),height/9,height/9);}
  }
}

class QUEEN extends PIECE{
  void move (boolean R, int x, int y){
     if(R && Selection){
        int j=column;
        int i=row;
        while(i<8 && j<8){
          i++; j++;
          if(i==y && j==x){row=y; column=x; i=8;}     
        }
        j=column; i=row;
        while(i<8 && j>-1){
          i++; j--;
          if(i==y && j==x){row=y; column=x; i=8;}    
        }
        j=column; i=row;
        while(i>-1 && j<8){
          i--; j++;
          if(i==y && j==x){row=y; column=x; i=-1;}
        }
        j=column; i=row;
        while(i>-1 && j>-1){
          i--; j--;
          if(i==y && j==x){row=y; column=x; i=-1;}      
        }
        for(int n=row+1; n<8; n++){
          if(n==y && column==x){row=y; column=x;}
        }
        for(int n=column+1; n<8; n++){
          if(n==x && row==y){row=y; column=x;}
        }
        for(int n=row-1; n>-1; n--){
          if(n==y && column==x){row=y; column=x;}
        }
        for(int n=column-1; n>-1; n--){
          if(n==x && row==y){row=y; column=x;}
        }
     }
  }
  void paint_piece(){
    if(Color){w = loadImage("piezasNeo/wq.png");}else{w = loadImage("piezasNeo/bq.png");}
    if(Active){image(w,(height/10+(column)*height/9.05),(height/20+(7-row)*height/9.05),height/9,height/9);}
  }
}

class KING extends PIECE{
  void move (boolean R, int x, int y){
     if(R && Selection){
        for(int i=-1;i<2;i++){
          if(y==row+i && (x==column-1 || x==column+0 || x==column+1) && !(i==0 && x==column)){row=y; column=x;}
        }
     }
  }
  void paint_piece(){
    if(Color){w = loadImage("piezasNeo/wk.png");}else{w = loadImage("piezasNeo/bk.png");}
    if(Active){image(w,(height/10+(column)*height/9.05),(height/20+(7-row)*height/9.05),height/9,height/9);}
  }
}