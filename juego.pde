class Juego{
  // PROPIEDADES (variables)
Fondo F;
Homero jugador;
Fuego obstaculo;
Bart B;
 boolean elalto;
 String estado;
 PFont tipog1;
 float posy; 
 String []textos=new String [4];
 PImage[]fuego= new PImage [3];
 PImage[]misimag =new PImage[4];
 PImage[]quemado=new PImage[2];
 PImage[]gano=new PImage[17];
 //boolean c=false;

Juego(){ 
   tipog1=loadFont("ComicSansMS-48.vlw");
   F = new Fondo();
   jugador=new Homero();
   obstaculo= new Fuego();
  B=new Bart();

 textos[0]="Homero debera salvar a Bart ,debe tener cuidado y saltar cuando sea necesario";
 textos[1]="[Presione Enter para comenzar]";
 textos[2]="[Presione Enter para volver al inicio]";
 textos[3]="[No has logrado salvar a Bart, preciona Enter y vuelve al inicio]";
 //-----------------------------------------------------------------------------------------
  misimag [0]=loadImage("homero corre.png");
  misimag [1]=loadImage("nombre.png");
  misimag[2]=loadImage("g.jpg");
  misimag[3]=loadImage("win.png");
  //----------------------------------------------
  for ( int i = 0 ; i <3 ; i++){
    fuego [i]=loadImage("Fueg_"+i+".png");
  }
  for ( int i = 0 ; i <2 ; i++){
    quemado[i]=loadImage("q_"+i+".png");
  }
    for ( int i = 0 ; i <17 ; i++){
   gano[i]=loadImage("g_"+i+".png");
  }
  posy=550;

  estado ="menu";
  }

 // METODOS (funciones)
  void play(){
    if(estado.equals("menu")){
     background(100,100,255);
     image(fuego[frameCount %3],0,400,400,200);
     image(misimag [0],550,0,245,531);
     image(misimag [1],0,0);
     textos(25,255,textos[0],200,200,300,400);
     textosC(20, 0,textos[1],400,550);
       }
    
    else if(estado.equals("jugar")){
     F.actualizar();
     F.dibujarFi();
     F.dibujar();
     jugador.dibujar(); 
     obstaculo.actualizar();
     obstaculo.dibujar();
     B.dibujar();
    }
  
     else if(estado.equals("pierde")){
      background(0);
      image(fuego[frameCount %3],0,400,400,200);
      image(misimag[2],250,200,300,150);
      image(quemado[frameCount %2],550,400,50,120);
      textosC(20, 255,textos[3],100,50);
  } 
    else if(estado.equals("gana")){
      background(0);
      image(misimag[3],250,100,300,300);
     image(gano[ frameCount%17],posy,400,68,110);
      posy=posy+15;
      textosC(20, 255,textos[2],400,550);
    }
  
  }
 void colision(){  
    boolean c=false;
float d =dist(jugador.x,jugador.y,obstaculo.x,obstaculo.y);
if(d==5&& estado.equals("jugar")){
c=true;
}
  if( c==true && estado.equals("jugar")){
     estado="pierde";
  }
 } 
  void colision2(){  
    boolean c=false;
    float d =dist(jugador.x,jugador.y,B.bx,B.y);
      if(d<5){
      c=true;
      println("d:",d);
    }
      if( c==true && estado.equals("jugar")){
       estado="gana";
      }
 }
// void colisiones() {
//println(jugador.x, jugador.y, B.bx, B.y, obstaculo.x,obstaculo.y);
//if (juego.elalto==true) {
//juego.teclas();
//juego.jugador.teclas();
//} else if (juego.elalto==false) {
//jugador.sueltoteclas();
//}
//juego.colision2();
//juego.colision();
//}
  void teclas(){
     if(keyCode==ENTER && estado.equals("menu")){
  estado = "jugar";
   }
     if(keyCode==ENTER && estado.equals("pierde")){
  estado = "menu";
   }
    if(keyCode==ENTER && estado.equals("gana")){
  estado = "menu";
   }   
  }
     void textos(int tam,int c,String textos,int x,int y,int diam,int diam1){
  
    textFont(tipog1);
   textSize(tam);
   fill(c);
   text(textos,x,y,diam,diam1);   
      }
  void textosC(int tam,int c,String textos,int x,int y){
    textFont(tipog1);
   textSize(tam);
   fill(c);
   text(textos,x,y);
 }   
}
