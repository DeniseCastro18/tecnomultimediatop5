import ddf.minim.*;

Minim minim;
AudioPlayer music_fondo;
Juego juego;
Homero jugador;
void setup() {
   minim= new Minim(this);
music_fondo= minim.loadFile("television-simpsons.mp3");
  size(800,600);
    music_fondo.play();
  //inicializo la clase juego
  juego = new Juego();
  jugador=new Homero();
}

void draw() {
 // background(  );
//llamo a los métodos de la clase Juego
  juego.play();
  //juego.colisiones();
if(juego.elalto==true){
    juego.teclas();
   juego.jugador.teclas();
}
else if(juego.elalto==false){
jugador.sueltoteclas();
}
  juego.colision2();
  juego.colision();

}

void keyPressed() {
  juego.teclas();
juego.elalto=true; 
   
}
void keyReleased(){
juego.elalto=false;  
}
