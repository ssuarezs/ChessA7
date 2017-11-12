import controlP5.*;

int Contador;
Button ObjetoBoton;
ControlP5 Cp5;


void bot(){
  
  Contador=1;
 
  Cp5=new ControlP5(this);
  ObjetoBoton=Cp5.addButton("Boton").setPosition(700,100)
  .setSize(100,100).setColorActive(color(0));
  
  ObjetoBoton.setColorBackground(color(2,120,120))
  .getCaptionLabel()
  .toUpperCase(false)
  .setText("Color")
  .setColor(color(0,0,255));
  
  Cp5.getController("Boton").getCaptionLabel();
  
  
}

public void Boton(){
  if(Contador==1){
    background(125,125,125);
    Contador++;
  return;}
  if(Contador==2){
    background(0,125,0);
    Contador++;
  return;}
  if(Contador==3){
    background(0,0,125);
    Contador++;
  return;}
   if(Contador==4){
    background(255,255,0);
    Contador=1;
  return;}
    
}