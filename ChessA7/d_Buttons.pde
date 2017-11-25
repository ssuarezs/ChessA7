import controlP5.*;


Button Main;
Button RotBoton;
ControlP5 Cp5;


void bot(){
  
  Cp5=new ControlP5(this);
  
  Main=Cp5.addButton("MAIN")
  .setPosition(650, 8)
  .setSize(80, 75)
  .setColorActive(color(227,225,130));
  Main.setColorBackground(color(239,172,20))
  .getCaptionLabel()
  .toUpperCase(false)
  .setText("MENU")
  .setColor(color(0));
  
  RotBoton=Cp5.addButton("rotBOARD")
  .setPosition(60, 550)
  .setSize(120, 30)
  .setColorActive(color(227,225,130));
  
  RotBoton.setColorBackground(color(239,172,20))
  .getCaptionLabel()
  .toUpperCase(false)
  .setText("ROTATE BOARD")
  .setColor(color(0));
  
  Cp5.getController("rotBOARD").getCaptionLabel();
  
  
  
}


public void MAIN(){
  FourK.show();
  Italian.show();
  D2K.show();
  Opw.view_op=false;
  if(!MENU.active){ MENU.A();} MENU.active=true;
     CONF.active=true; CONF.A(); CONF.active=false;
     Opw.active=true; Opw.A(); Opw.active=false;
     board1.playing=false;
}

public void rotBOARD(){
  board1.rotate = !board1.rotate;    
}