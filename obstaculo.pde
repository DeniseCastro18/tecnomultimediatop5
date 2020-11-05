class Fuego{
 float x;
 float y;
 float vel;
 PImage Fug[]=new PImage  [6];
 // CONSTRUCTOR (setup del objeto)
 Fuego(){
 x=1000;
 y=350;
 vel= random(5,10);

  for (int i = 0 ; i <6 ; i++){
    Fug[i]=loadImage("fug_"+i+".png");
  }
 }
 // METODOS (funciones)
 void actualizar(){
    x=x-vel;
  if(x<-10){
    reciclar();
 }
 }
 void dibujar(){
     image(Fug[frameCount %6],x,y,132,52);
 }
 
 void reciclar(){
    x=1000;
   y=350;
 vel= random(5,10);
 }
}
