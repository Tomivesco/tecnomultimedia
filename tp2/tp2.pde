/*
Alumno:Tomas Vesco
Legajo: 91469/8
Profesor: David
Entrega de tp2
video explicativo: https://youtu.be/kpIGyADrhWg
Tuve un problema con la camara y no me pude grabar pero pude hacer ese video perdon si no complete bien la consigna
*/


int i=0;

void setup(){
size(400,400);
rectMode(RADIUS);
noStroke();

}

void draw(){
translate(width/2, height/2);
background(random(255));
for (i=0; i<40; i++){
rotate(map(mouseX,0,width,PI/2,PI/80));
translate(0,map(mouseY,0,height,0,10));
if(i%2==0) fill (random (255));
else
fill(random(0.255),random(0.255),random(0));
float radio = (width/3)- i*3.5;
rect(0,0,radio,radio);
}
for (i=0; i<40; i++){
rotate(map(mouseX,0,width,PI/2,PI/80));
translate(0,map(mouseY,0,height,0,10));

fill(random(255));
float radio= (height/3.5)- i*3.5;
ellipse(150,0, radio, radio);
}

if (keyPressed){
 if (key== 't' || key == 'T');
 i=0;
 mouseX=0;
 mouseY=0;
   }
}
