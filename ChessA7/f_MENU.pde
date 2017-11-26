    
    Button MultP;
    Button Openings;
    Button Help; 

abstract class WINDOW{
    boolean active=false;
    PImage K=loadImage("piezas/neow/wk.png");
    PImage P=loadImage("piezas/neow/bp.png");
    String title="Chess-A7";
    int x;
    int y;  
    
    abstract void setp();
    abstract void dec();
    abstract void A();
    
}

class menu extends WINDOW{
  
        
    void setp(){
        active=true;
        x=800; y=100;
           
                
        MultP=Cp5.addButton("MultPLAYER")
        .setPosition(x, y)
        .setSize(200, 60)
        .setColorActive(color(227,225,130));
        
        MultP.setColorBackground(color(239,172,20))
        .getCaptionLabel()
        .toUpperCase(false)
        .setText("Multi-JUGADOR")
        .setColor(color(0));
       
       Openings=Cp5.addButton("OPE")
        .setPosition(x, y+100)
        .setSize(200, 60)
        .setColorActive(color(227,225,130));
        
        Openings.setColorBackground(color(239,172,20))
        .getCaptionLabel()
        .toUpperCase(false)
        .setText("ENTRENAMIENTO")
        .setColor(color(0));
        
        Help=Cp5.addButton("HELP")
        .setPosition(x, y+200)
        .setSize(200, 60)
        .setColorActive(color(227,225,130));
        
        Help.setColorBackground(color(239,172,20))
        .getCaptionLabel()
        .toUpperCase(false)
        .setText("CONFIGURACIONES")
        .setColor(color(0));
        
    
    }
    
    void dec(){
      PImage Kw=loadImage("piezas/neow/wk.png");
      PImage Kb=loadImage("piezas/neow/bk.png");
      PImage N=loadImage("piezas/neow/wn.png");
      PImage R=loadImage("piezas/neow/br.png");
      PImage P1=loadImage("piezas/neow/wp.png");
      PImage L=loadImage("piezas/a.jpg");
      fill(40); rect(630,10,470,70,8);
      image(K,990,6,height/9,height/9);
      image(P,1020,14,height/9,height/9);
      fill(250);
      textSize(50);
      text(title, 750, 10, 1500, 100);
      fill(40);rect(x-100,y-10,330,300,8);
      image(Kb,x-70,y,height/9,height/9); image(Kw,x-100,y-5,height/9,height/9);
      image(R,x-70,y+96,height/9,height/9); image(N,x-100,y+100,height/9,height/9);
      image(L,x-70,y+200,height/12,height/12); image(P1,x-100,y+200,height/9,height/9); 
      MultP.setPosition(x, y);             
      Openings.setPosition(x, y+100);              
      Help.setPosition(x, y+200);
    
    }
    
    void A(){if(active){Ani.to(this, 2, "y", (1000), Ani.EXPO_IN_OUT);}else{Ani.to(this, 2, "y", (100), Ani.EXPO_IN_OUT);}  }
}

      
    public void MultPLAYER(){ 
        board1.default_position();
        board1.Animation();
        board1.c_Display();
        board1.playing=true;
      } 
    
    public void OPE(){
        MENU.A(); MENU.active=!MENU.active; 
        Opw.A(); Opw.active=!CONF.active; 
        board1.playing=false;
      }
    
    public void HELP(){CONF.A(); CONF.active=!CONF.active;}
    
    
    
    
    