
class Opening{
      boolean reading=false;
      int move=0;
      String rut;
      Table table;
      String[] text_explain;
      
      
  void load_data(){
   if(reading ){
        table = loadTable(rut+move+".csv", "header"); 
          for (int i = 0; i<table.getRowCount(); i++) {
              TableRow row = table.getRow(i);    
              int P = row.getInt("piece"); 
              int C = row.getInt("col");   
              int R = row.getInt("row");   
              int A = row.getInt("active");    
               board1.chang_data(P, R, C, A);
           }
        board1.Animation();
        board1.c_Display();
        board1.player=!board1.player;
        reading = false;
   }}
   
   void OP(int a){
       if(a==1){rut="aperturas/4caballos/";}
       if(a==2){rut="aperturas/Italiana/";}
       if(a==3){rut="aperturas/D2K/";}
       move = 0; 
   
   }
    
   void textE(){ 
        text_explain = loadStrings(rut+"K.txt");
        fill(30); textSize(20);
        text(text_explain[0],700,160);
        textSize(15);
        if(move>0 && move<text_explain.length){text(text_explain[move],700,190,400,300);}
        
   
   }
}