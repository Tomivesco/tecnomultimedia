import ddf.minim.*;
///////////////////////////////////////////////////////////////////////////TRABAJO PRÁCTICO N° 5///////////////////////////////////////////////////////////////////////////////////////
//ALUMNO: TOMAS VESCO
//LEGAJO: 91469/8

Minim minim;
Juego juego;
AudioSample sonido, sonido2, sonido3, sonido4, sonido5;

void setup() { 
  
  minim = new Minim(this);
  juego = new Juego();
  size (800, 600);
  frameRate (10);
 
 sonido = minim.loadSample ("ready.wav");
 sonido2 = minim.loadSample ("andando.wav");
 sonido3 = minim.loadSample ("morir.wav");
 sonido4 = minim.loadSample ("comer.wav");
 sonido5 = minim.loadSample ("ganar.wav");
 
}

void draw() {

  juego.dibujar();
  
}

void keyPressed(){
  juego.teclas();
  
  if (key == 'c') {
    sonido.trigger();
  }
  
  if (key == 'a' || key == 's' || key == 'd' || key == 'w') {
   sonido2.trigger(); 
  }
  
}
