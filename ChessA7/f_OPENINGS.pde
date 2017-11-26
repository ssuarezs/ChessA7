ScrollableList OPSs;
Button next;
Button back;
Button begin;


class OPE_W extends WINDOW{
  
      void setp(){
         List l= Arrays.asList("APERTURA DE LOS 4 CABALLOS", "ITALIANA", "DEFENSA DE LOS DOS CABALLOS");
         x=1500; y = 120;
         
        OPSs = Cp5.addScrollableList("APERTURA")
       .setPosition(700, 400)
       .setSize(300, 150)
       .setBarHeight(20)
       .setItemHeight(20)
       .addItems(l).setColorValue(color(0));
       
        OPSs.setColorBackground(color(210))
        .getCaptionLabel()
        .setColor(color(0));
        
        
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
         
         
      }    
  
      void dec(){
      
      fill(250);
      fill(40);rect(x,y,450,330,8);
      fill(240); rect(x+10,y+10,430,263,8);
      next.setPosition(x+320,400);
      back.setPosition(x+200,400);
      begin.setPosition(x+50,400);
      OPSs.setPosition(x+50,y+10);
      Opens.textE();
    
    }
    
    void A(){if(active){Ani.to(this, 2, "x", (1500), Ani.EXPO_IN_OUT);}else{Ani.to(this, 2, "x", (675), Ani.EXPO_IN_OUT);}  }
}



void APERTURA(int n) {
  
   if(n==0){  Opens.F=1; Opens.Loading();}
   if(n==1){  Opens.F=2; Opens.Loading();}
   if(n==2){  Opens.F=3; Opens.Loading();}
    
}


public void next(){
Opens.reading=true; Opens.move++; Opens.load_data(); Opens.reading=false;println(Opens.move);
}
public void back(){
if(Opens.move>0){Opens.reading=true; Opens.move--; Opens.load_data(); Opens.reading=false;}
}
public void begin(){
  board1.default_position();  
  Opens.move= 0;
}