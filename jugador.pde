 class Homero{
 Bart B;
 Fuego obstaculo;
 float x;
float y;
float velocidad;
float desaceleracion;
boolean salto;
float saltoenY;
float tiempofalso;
boolean abajo;
boolean izquierda;
boolean derecha;
int inicial;
int tiempo;
  PImage []homero= new PImage [9];
 boolean saltar=false;
boolean r=false;
boolean c=false;
Homero(){
   B=new Bart();
    obstaculo= new Fuego();
x=100;
y=300;
tiempo=0;
inicial=0;
 saltoenY=0.01;
  salto=false;
velocidad=0.01;

  for ( int i = 0 ; i <9 ; i++){
    homero [i]=loadImage("h_"+i+".png");
    
  }
}
// // METODOS (funciones)
 void dibujar(){  
   println(salto);
    desaceleracion=0.9; 
   tiempo=tiempo+1;
   if(tiempo>10){
     inicial=inicial+1;
     tiempo=0;
   }
 image(homero[inicial%9],x,y,83,124);
 

 if(y>300){
 y=300;
saltoenY=0;
tiempofalso=0;
salto=false;
}
  if(derecha==true){

    x=x+velocidad;
  
  velocidad=velocidad+0.039;
  
  
  }
  else{ 
  velocidad=velocidad*0.99;
  
  }
  
  
 if(izquierda==true){

    x=x-velocidad;
    
  velocidad=velocidad+0.039;
  
  }
  else{ 
  velocidad=velocidad*0.99;
  }
  
  
  
  
  
  
  
 if(salto==true){

  y=y-saltoenY;
  
  saltoenY=saltoenY+0.9;
  tiempofalso=tiempofalso+1;
  }
   
if(y<300){
salto=true;
}  
  
  if(tiempofalso>5){
    saltoenY=saltoenY-1 ;  
}
  if(velocidad !=0){velocidad=velocidad*0.99;  }
  if(velocidad >=3.4){velocidad=3.4;  }
  if(saltoenY >=5){saltoenY=5;}
  // con esto se frena la velocidad maxima;
println(saltoenY);
 }





 void teclas() {
   if (key == ' ') salto = true; 
  if (key == CODED) {
     
    if (keyCode == DOWN) abajo = true; 
    if (keyCode == LEFT) izquierda = true; 
    if (keyCode == RIGHT) derecha = true; 
  }
}
 
void sueltoteclas() {
  
   if (key == ' ') salto = false;
  
  if (key == CODED) {
    
    if (keyCode == DOWN) abajo = false; 
    if (keyCode == LEFT) izquierda = false; 
    if (keyCode == RIGHT) derecha = false; 
  }
}
// void colision(){  
//    boolean c=false;
//float d =dist(jugador.x,jugador.y,obstaculo.x,obstaculo.y);
//if(d==5&& juego.estado.equals("jugar")){
//c=true;
//}
//  if( c==true && juego.estado.equals("jugar")){
//     juego.estado="pierde";
//  }
// } 
 
// void colision2(){  
//    boolean c=false;
//    float d =dist(jugador.x,jugador.y,B.bx,B.y);
//      if(d<5){
//      c=true;
//      println("d:",d);
//    }
//      if( c==true && juego.estado.equals("jugar")){
//       juego.estado="gana";
//      }
// }
}
