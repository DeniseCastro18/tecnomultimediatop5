class Bart{
  float bx;
  float y;
  int v;
  int tam;
  PImage B;
  Bart(){
    y=300;
    bx=2000;
    v=1;
    B=loadImage("Bart-simpson.png");
  }
  void dibujar(){
    image(B,bx,y ,39,122) ;
    bx=bx-v;
     
  }
}
