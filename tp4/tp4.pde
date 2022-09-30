/*
Alumno:Tomas Vesco, Jimena Contreras, Agustina barilla
Legajo: 91469/8
Profesor: David
Entrega de tp2
video explicativo: https://youtu.be/24zL3jRX32k
Tuve un problema con la camara y no me pude grabar pero pude hacer ese video perdon si no complete bien la consigna
*/

Juego juego;

void setup() { 
  
  
  juego = new Juego();
  size (800, 600);
  frameRate (10);
}

void draw() {

  juego.dibujar();
  
}

void keyPressed(){
juego.teclas();


}
