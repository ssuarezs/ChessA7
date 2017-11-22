    Button MultP;
    Button Openings;
    Button Help; 

class WINDOW{
    boolean active=true;
    PImage K=loadImage("piezas/neow/wk.png");
    PImage P=loadImage("piezas/neow/bp.png");
    String title="Chess-A7";
    String subtitle;
    int x;
    int y;    
    
    void Draw_windows(){
      if(active){  
        fill(40); rect(630,10,500,70,8);
        image(K,1040,6,height/9,height/9);
        image(P,1070,14,height/9,height/9);
        fill(250);
        textSize(50);
        //fill(50);
        text(title, 800, 10, 1500, 100);
      }
    }
}

class menu extends WINDOW{
        
    void bottons(){
      x=800; y =100;  
    
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
        .setText("AYUDA Y CONFIGURACIONES")
        .setColor(color(0));
        
    
    }
    
    void dec(){
      PImage Kw=loadImage("piezas/neow/wk.png");
      PImage Kb=loadImage("piezas/neow/bk.png");
      PImage N=loadImage("piezas/neow/wn.png");
      PImage R=loadImage("piezas/neow/br.png");
      PImage P=loadImage("piezas/neow/wp.png");
      PImage L=loadImage("piezas/a.jpg");
      Draw_windows();
      fill(40);rect(x-100,y-10,330,300,8);
      image(Kb,x-70,y,height/9,height/9); image(Kw,x-100,y-5,height/9,height/9);
      image(R,x-70,y+96,height/9,height/9); image(N,x-100,y+100,height/9,height/9);
      image(L,x-70,y+200,height/12,height/12); image(P,x-100,y+200,height/9,height/9); 
        if(active){  MultP.show();Openings.show();Help.show();
             }else{  MultP.hide();Openings.hide();Help.hide();   }
    
    }

}

    public void MultPLAYER(){board1.rotate = !board1.rotate; }
    public void OPE(){board1.rotate = !board1.rotate; }
    public void HELP(){board1.rotate = !board1.rotate; }