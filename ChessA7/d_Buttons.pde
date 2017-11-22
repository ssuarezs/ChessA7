import controlP5.*;

int Bteam=1;
int Pteam=1;

Button BoardTeam;
Button PiecesTeam;
Button RotBoton;
ControlP5 Cp5;
ControlP5 B;


void bot(){
  
  B =new ControlP5(this); 
  Cp5=new ControlP5(this);
  RotBoton=Cp5.addButton("rotBOARD")
  .setPosition(270, 550)
  .setSize(100, 30)
  .setColorActive(color(227,225,130));
  
  RotBoton.setColorBackground(color(239,172,20))
  .getCaptionLabel()
  .toUpperCase(false)
  .setText("ROTATE BOARD")
  .setColor(color(0));
  
  Cp5.getController("rotBOARD").getCaptionLabel();
  
  RotBoton=Cp5.addButton("boaTEAM")
  .setPosition(160, 550)
  .setSize(100, 30)
  .setColorActive(color(227,225,130));
  
  RotBoton.setColorBackground(color(239,172,20))
  .getCaptionLabel()
  .toUpperCase(false)
  .setText("BOARD TEAM")
  .setColor(color(0));
  
  Cp5.getController("boaTEAM").getCaptionLabel();
  
  RotBoton=Cp5.addButton("pieTEAM")
  .setPosition(50, 550)
  .setSize(100, 30)
  .setColorActive(color(227,225,130));
  
  RotBoton.setColorBackground(color(239,172,20))
  .getCaptionLabel()
  .toUpperCase(false)
  .setText("PIECES TEAM")
  .setColor(color(0));
  
  Cp5.getController("pieTEAM").getCaptionLabel();
  
}

public void rotBOARD(){
  board1.rotate = !board1.rotate;    
}
public void boaTEAM(){
  Bteam++; if(Bteam>4){Bteam=1;}    
}
public void pieTEAM(){
  Pteam++; if(Pteam>5){Pteam=1;}     
}