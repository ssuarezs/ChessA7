int Bteam=1;
int Pteam=1;

Button BoardTeam;
Button PiecesTeam;


class SETTINGS extends WINDOW{
  void setp(){
    x=1; y=1;
      BoardTeam=Cp5.addButton("boaTEAM")
      .setPosition(1035,335)
      .setSize(100, 30)
      .setColorActive(color(227,225,130));
      
      BoardTeam.setColorBackground(color(239,172,20))
      .getCaptionLabel()
      .toUpperCase(false)
      .setText("TEMA DEL TABLERO")
      .setColor(color(0));
      
      Cp5.getController("boaTEAM").getCaptionLabel();
      
      PiecesTeam=Cp5.addButton("pieTEAM")
      .setPosition(1035,305)
      .setSize(100, 30)
      .setColorActive(color(227,225,130));
      
      PiecesTeam.setColorBackground(color(239,172,20))
      .getCaptionLabel()
      .toUpperCase(false)
      .setText("TEMA DE LAS PIEZAS")
      .setColor(color(0));
      
      Cp5.getController("pieTEAM").getCaptionLabel();
  
  }
  
  void dec(){
    fill(30);rect(1020,300,x,y,8);
    if(active){
      BoardTeam.show();
      PiecesTeam.show();}else{
      BoardTeam.hide();
      PiecesTeam.hide();      
      }
    BoardTeam.setSize(8*x/10,y/4);
    PiecesTeam.setSize(8*x/10,y/4);
    
  }
  
  void A(){if(active){Ani.to(this, 1, "y", (1), Ani.EXPO_IN_OUT);
                      Ani.to(this, 1, "x", (1), Ani.EXPO_IN_OUT);  }else{
                      Ani.to(this, 1, "y", (100), Ani.EXPO_IN_OUT);
                      Ani.to(this, 1, "x", (120), Ani.EXPO_IN_OUT);} 
                      }
}


public void boaTEAM(){
  Bteam++; if(Bteam>4){Bteam=1;}    
}
public void pieTEAM(){
  Pteam++; if(Pteam>5){Pteam=1;}     
}