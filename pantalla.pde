class Fondo {
 // PROPIEDADES (variables)
float x, y;
float posx;
float nx,ny,ny1;
float vel=8;
float veln;
PImage casa;
PImage calle;
PImage nube,nube1;

 // CONSTRUCTOR (setup del objeto)
 // inicializar las propiedades/variables
 //carga imagen de fondo
  
Fondo(){
  y=340;
  x=0;
  nx=900;
  ny=random(0,300);
  ny1=random(50,350);
  veln=random(4,8);
  posx=0;
  casa=loadImage("casa.png");
  calle=loadImage("calle.png");
  nube=loadImage("nube.png");
   nube1=loadImage("nube1.png");
}
// METODOS (funciones)
void actualizar(){
 x= x-vel;
  if(x <-450  ){
   x=-100;
  }
  nx=nx-veln;
  if(nx<-100){
    reciclar();
  }
}
 void dibujarFi(){
   background(55,155,255);
   
  rect(0,450,800,600);
  fill(0);
 image(casa,posx,0);
 posx=posx-8;
 //textSize(25);
 //textFill(255);
 //text("presiona barra espaciadora para saltar",50,500);
 }
 void dibujar(){
 image(calle,x,340);
 //println("x:"+x);
  image(nube,nx,ny);
  image(nube1,nx,ny1);
  //println("nx:"+nx);
}
void reciclar(){
   nx=900;
  ny=random(0,300);
   ny1=random(50,350);
  veln=random(4,8);
}
}
