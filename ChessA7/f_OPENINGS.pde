Button FourK;
Button Italian;
Button D2K;
Button next;
Button back;
Button begin;


class OPE_W extends WINDOW{
  boolean view_op=false;

      void setp(){
         x=1500; y = 120;
         
         next=Cp5.addButton("next")
        .setPosition(1000,400)
        .setSize(100, 30)
        .setColorActive(color(227,225,130));
        
        next.setColorBackground(color(239,172,20))
        .getCaptionLabel()
        .toUpperCase(false)
        .setText("SIGUIENTE")
        .setColor(color(0)); 
        
        back=Cp5.addButton("back")
        .setPosition(880,400)
        .setSize(100, 30)
        .setColorActive(color(227,225,130));
        
        back.setColorBackground(color(239,172,20))
        .getCaptionLabel()
        .toUpperCase(false)
        .setText("ANTERIOR")
        .setColor(color(0)); 
        
        begin=Cp5.addButton("begin")
        .setPosition(720,400)
        .setSize(100, 30)
        .setColorActive(color(227,225,130));
        
        begin.setColorBackground(color(239,172,20))
        .getCaptionLabel()
        .toUpperCase(false)
        .setText("VOLVER AL INICIO")
        .setColor(color(0)); 
         
         FourK=Cp5.addButton("FOURkn")
        .setPosition(x,y)
        .setSize(200, 30)
        .setColorActive(color(227,225,130));
        
        FourK.setColorBackground(color(239,172,20))
        .getCaptionLabel()
        .toUpperCase(false)
        .setText("APERTURA DE LOS CUATRO CABALLOS")
        .setColor(color(0));        
        
        Italian=Cp5.addButton("Italian")
        .setPosition(x,y)
        .setSize(200, 30)
        .setColorActive(color(227,225,130));
        
        Italian.setColorBackground(color(239,172,20))
        .getCaptionLabel()
        .toUpperCase(false)
        .setText("APERTURA ITALIANA")
        .setColor(color(0));
        
        D2K=Cp5.addButton("Def2K")
        .setPosition(x,y)
        .setSize(200, 30)
        .setColorActive(color(227,225,130));
        
        D2K.setColorBackground(color(239,172,20))
        .getCaptionLabel()
        .toUpperCase(false)
        .setText("DEFENSA DE LOS DOS CABALLOS")
        .setColor(color(0));
      }    
  
      void dec(){
      
      fill(250);
      fill(40);rect(x,y,450,330,8);
      FourK.setPosition(x+50,y+30);
      Italian.setPosition(x+50,y+80);
      D2K.setPosition(x+50,y+130); 
      if(view_op){
           next.show(); back.show(); begin.show();
           fill(240); rect(685,132,430,263,8); 
       }else{
           next.hide(); back.hide(); begin.hide();}
    
    }
    
    void A(){if(active){Ani.to(this, 2, "x", (1500), Ani.EXPO_IN_OUT);}else{Ani.to(this, 2, "x", (675), Ani.EXPO_IN_OUT);}  }
}

public void FOURkn(){
  FourK.hide();
  Italian.hide();
  D2K.hide();
  Opw.view_op=true; 
  if(Opens.rut=="aperturas/4caballos/"){
          Opens.reading=true;  Opens.load_data(); Opens.reading=false;
    }else{Opens.OP(1); Opens.reading=true; 
          Opens.load_data(); Opens.reading=false;}
}
public void Italian(){
  FourK.hide();
  Italian.hide();
  D2K.hide();
  Opw.view_op=true; 
  if(Opens.rut=="aperturas/italina/"){
          Opens.reading=true;  Opens.load_data(); Opens.reading=false;
    }else{Opens.OP(2); Opens.reading=true; 
          Opens.load_data(); Opens.reading=false;}
}
public void Def2K(){
  FourK.hide();
  Italian.hide();
  D2K.hide();
  Opw.view_op=true; 
  if(Opens.rut=="aperturas/D2K/"){
          Opens.reading=true;  Opens.load_data(); Opens.reading=false;
    }else{Opens.OP(3); Opens.reading=true; 
          Opens.load_data(); Opens.reading=false;}  
}


public void next(){
Opens.reading=true; Opens.move++; Opens.load_data(); Opens.reading=false;
}
public void back(){
Opens.reading=true; Opens.move--; Opens.load_data(); Opens.reading=false;
}
public void begin(){
  board1.default_position();  
  Opens.move= 0;
}