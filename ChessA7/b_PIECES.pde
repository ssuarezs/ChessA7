public abstract class PIECE{
  int column; //column where is the piece
  int row;    //row where is the piece
  float discol;
  float disrow;
  boolean Color; //Piece's color: true-white , false-black
  boolean Selection;  // indicate if the piece have be selected
  boolean Active; //indicate if the piece is in the board
  PImage w; //Piece's image
  
  void Dis(){
    if(board1.rotate){discol=(height/10+(column)*height/9.05); disrow=(height/50+(7-row)*height/9.05);
                }else{discol=(height/10+(7-column)*height/9.05); disrow=(height/50+(row)*height/9.05);  } 
    }
  void Anim(){
    if(Selection){
      if(board1.rotate){
        Ani.to(this, 0.5, "discol", (height/10+(column)*height/9.05), Ani.EXPO_IN_OUT);
        Ani.to(this, 0.5, "disrow", (height/50+(7-row)*height/9.05), Ani.EXPO_IN_OUT);
      }else{
        Ani.to(this, 0.5, "discol", (height/10+(7-column)*height/9.05), Ani.EXPO_IN_OUT);
        Ani.to(this, 0.5, "disrow", (height/50+(row)*height/9.05), Ani.EXPO_IN_OUT);
      }
    }
    }
  void move_piece(  int r,int c,int x,int y){board1.change_square(r,c,y,x); board1.deletePiece();
                                             row=y; column=x; board1.player=!board1.player;Anim();} //move_piece(r,c,x,y);
  }

      class PAWN extends PIECE{
        void move (  int r,int c,int x,int y){
            if(  Selection && x == column){
              if(Color){
                if(row+1 == y){move_piece(r,c,x,y);}
                if(row==1 && y==3){move_piece(r,c,x,y);}
              }else{
                if(row-1 == y){move_piece(r,c,x,y);}
                if(row==6 && y==4){move_piece(r,c,x,y);}
              }
          }
        }
        void capture_right (boolean P,     int r,int c,int x,int y){
            if(P &&   Selection){
              if(Color){if(row+1==y && column+1==x){move_piece(r,c,x,y);}
              }else{if(row-1==y && column+1==x){move_piece(r,c,x,y);}}
          }
        }
        void capture_left (boolean P,    int r,int c,int x,int y){
            if(P &&   Selection){
              if(Color){if(row+1==y && column-1==x){move_piece(r,c,x,y);}
              }else{if(row-1==y && column-1==x){move_piece(r,c,x,y);}}
          }
        }
        void paint_piece(){
          if(Pteam==1){if(Color){w = loadImage("piezas/neo/wp.png");}else{w = loadImage("piezas/neo/bp.png");}}
          if(Pteam==2){if(Color){w = loadImage("piezas/neow/wp.png");}else{w = loadImage("piezas/neow/bp.png");}}
          if(Pteam==3){if(Color){w = loadImage("piezas/paper/wp.png");}else{w = loadImage("piezas/paper/bp.png");}}
          if(Pteam==4){if(Color){w = loadImage("piezas/tour/wp.png");}else{w = loadImage("piezas/tour/bp.png");}}
          if(Pteam==5){if(Color){w = loadImage("piezas/space/wp.png");}else{w = loadImage("piezas/space/bp.png");}}
          if(Active){image(w,discol,disrow,height/9,height/9);}
        }
      }
      
      class KNIGHT extends PIECE{
        void move (   int r,int c,int x,int y){
           if(  Selection){
            if(row+2==y && column+1==x){move_piece(r,c,x,y);}
            if(row+1==y && column+2==x){move_piece(r,c,x,y);}
            if(row-1==y && column+2==x){move_piece(r,c,x,y);}
            if(row-2==y && column+1==x){move_piece(r,c,x,y);}
            if(row-2==y && column-1==x){move_piece(r,c,x,y);}
            if(row-1==y && column-2==x){move_piece(r,c,x,y);}
            if(row+1==y && column-2==x){move_piece(r,c,x,y);}
            if(row+2==y && column-1==x){move_piece(r,c,x,y);}
          }
        }
        void paint_piece(){
          if(Pteam==1){if(Color){w = loadImage("piezas/neo/wn.png");}else{w = loadImage("piezas/neo/bn.png");}}
          if(Pteam==2){if(Color){w = loadImage("piezas/neow/wn.png");}else{w = loadImage("piezas/neow/bn.png");}}
          if(Pteam==3){if(Color){w = loadImage("piezas/paper/wn.png");}else{w = loadImage("piezas/paper/bn.png");}}
          if(Pteam==4){if(Color){w = loadImage("piezas/tour/wn.png");}else{w = loadImage("piezas/tour/bn.png");}}
          if(Pteam==5){if(Color){w = loadImage("piezas/space/wn.png");}else{w = loadImage("piezas/space/bn.png");}}
          if(Active){image(w,discol,disrow,height/9,height/9);}
        }
      }
      
      class BISHOP extends PIECE{
        void move (    int r,int c,int x,int y){
           if(  Selection){
              int j=column;
              int i=row;
              while(i<=7 && j<=7){
                i++; j++;
                if(i==y && j==x){move_piece(r,c,x,y);i=8;}     
              }
              j=column; i=row;
              while(i<=7 && j>=0){
                i++; j--;
                if(i==y && j==x){move_piece(r,c,x,y); i=8;}    
              }
              j=column; i=row;
              while(i>=0 && j<=7){
                i--; j++;
                if(i==y && j==x){move_piece(r,c,x,y); i=-1;}
              }
              j=column; i=row;
              while(i>=0 && j>=0){
                i--; j--;
                if(i==y && j==x){move_piece(r,c,x,y); i=-1;}      
              }
           }
        }
        void paint_piece(){
          if(Pteam==1){if(Color){w = loadImage("piezas/neo/wb.png");}else{w = loadImage("piezas/neo/bb.png");}}
          if(Pteam==2){if(Color){w = loadImage("piezas/neow/wb.png");}else{w = loadImage("piezas/neow/bb.png");}}
          if(Pteam==3){if(Color){w = loadImage("piezas/paper/wb.png");}else{w = loadImage("piezas/paper/bb.png");}}
          if(Pteam==4){if(Color){w = loadImage("piezas/tour/wb.png");}else{w = loadImage("piezas/tour/bb.png");}}
          if(Pteam==5){if(Color){w = loadImage("piezas/space/wb.png");}else{w = loadImage("piezas/space/bb.png");}}
          if(Active){image(w,discol,disrow,height/9,height/9);}
        }
      }
      
      class ROOK extends PIECE{
        boolean Iposition=true;
        void move (    int r,int c,int x,int y){
           if(  Selection){
              for(int i=row+1; i<=7; i++){
                if(i==y && column==x){move_piece(r,c,x,y);Iposition=false;}
              }
              for(int i=column+1; i<=7; i++){
                if(i==x && row==y)   {move_piece(r,c,x,y);Iposition=false;}
              }
              for(int i=row-1; i>=0; i--){
                if(i==y && column==x){move_piece(r,c,x,y);Iposition=false;}
              }
              for(int i=column-1; i>=0; i--){
                if(i==x && row==y)   {move_piece(r,c,x,y);Iposition=false;}
              }
           }
        }
        void paint_piece(){
          if(Pteam==1){if(Color){w = loadImage("piezas/neo/wr.png");}else{w = loadImage("piezas/neo/br.png");}}
          if(Pteam==2){if(Color){w = loadImage("piezas/neow/wr.png");}else{w = loadImage("piezas/neow/br.png");}}
          if(Pteam==3){if(Color){w = loadImage("piezas/paper/wr.png");}else{w = loadImage("piezas/paper/br.png");}}
          if(Pteam==4){if(Color){w = loadImage("piezas/tour/wr.png");}else{w = loadImage("piezas/tour/br.png");}}
          if(Pteam==5){if(Color){w = loadImage("piezas/space/wr.png");}else{w = loadImage("piezas/space/br.png");}}
          if(Active){image(w,discol,disrow,height/9,height/9);}
        }
      }
      
      class QUEEN extends PIECE{
        void move (    int r,int c,int x,int y){
           if(  Selection){
              int j=column;
              int i=row;
              while(i<=7 && j<=7){
                i++; j++;
                if(i==y && j==x){move_piece(r,c,x,y); i=8;}     
              }
              j=column; i=row;
              while(i<=7 && j>=0){
                i++; j--;
                if(i==y && j==x){move_piece(r,c,x,y); i=8;}    
              }
              j=column; i=row;
              while(i>=0 && j<=7){
                i--; j++;
                if(i==y && j==x){move_piece(r,c,x,y); i=-1;}
              }
              j=column; i=row;
              while(i>=0 && j>=0){
                i--; j--;
                if(i==y && j==x){move_piece(r,c,x,y); i=-1;}      
              }
               for(int n=row+1; n<=7; n++){
                if(n==y && column==x){move_piece(r,c,x,y);}
              }
              for(int n=column+1; n<=7; n++){
                if(n==x && row==y){move_piece(r,c,x,y);}
              }
              for(int n=row-1; n>=0; n--){
                if(n==y && column==x){move_piece(r,c,x,y);}
              }
              for(int n=column-1; n>=0; n--){
                if(n==x && row==y){move_piece(r,c,x,y);}
              }
           }
        }
        void paint_piece(){
          if(Pteam==1){if(Color){w = loadImage("piezas/neo/wq.png");}else{w = loadImage("piezas/neo/bq.png");}}
          if(Pteam==2){if(Color){w = loadImage("piezas/neow/wq.png");}else{w = loadImage("piezas/neow/bq.png");}}
          if(Pteam==3){if(Color){w = loadImage("piezas/paper/wq.png");}else{w = loadImage("piezas/paper/bq.png");}}
          if(Pteam==4){if(Color){w = loadImage("piezas/tour/wq.png");}else{w = loadImage("piezas/tour/bq.png");}}
          if(Pteam==5){if(Color){w = loadImage("piezas/space/wq.png");}else{w = loadImage("piezas/space/bq.png");}}
          if(Active){image(w,discol,disrow,height/9,height/9);}
        }
      }
      
      class KING extends PIECE{
        boolean Iposition=true;
        void move (    int r,int c,int x,int y){
           if(  Selection){
              for(int i=-1;i<2;i++){
                if(y==row+i && (x==column-1 || x==column+0 || x==column+1) && !(i==0 && x==column)){
                move_piece(r,c,x,y); Iposition=false;}
              }
           }
        }
        void paint_piece(){
          if(Pteam==1){if(Color){w = loadImage("piezas/neo/wk.png");}else{w = loadImage("piezas/neo/bk.png");}}
          if(Pteam==2){if(Color){w = loadImage("piezas/neow/wk.png");}else{w = loadImage("piezas/neow/bk.png");}}
          if(Pteam==3){if(Color){w = loadImage("piezas/paper/wk.png");}else{w = loadImage("piezas/paper/bk.png");}}
          if(Pteam==4){if(Color){w = loadImage("piezas/tour/wk.png");}else{w = loadImage("piezas/tour/bk.png");}}
          if(Pteam==5){if(Color){w = loadImage("piezas/space/wk.png");}else{w = loadImage("piezas/space/bk.png");}}
          if(Active){image(w,discol,disrow,height/9,height/9);}
        }
      }