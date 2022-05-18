int estado;

PImage esponja, bob, bob2;

float posX, posY;

PFont letra;

void setup() {

  estado=0;

  size (400, 400);
  //cargo imagenes que voy a usar y tipografia
  esponja=loadImage("personajes.jpg");
  esponja.resize(400, 400);

  bob=loadImage("bob.jpg");
  bob.resize(400, 400);

  bob2=loadImage("bob2.jpg");
  bob2.resize(400, 400);

  letra=loadFont("LucidaSans.vlw");
  textFont(letra);
}

void draw() {
  background(0);
  //primer pantalla donde hay que hacer click para avanzar
  if ( estado==0 ) {
    background(0, 0, 0);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(20);
    text("Click para mostrar créditos", width/2, height/2);
  }
  //segunda pantalla donde esta el titulo de la pelicula
  else if (estado==1) {
    image(esponja, 0, 0);
    fill(243, 252, 0);
    textSize(80);
    textAlign(LEFT);
    text("Bob Esponja", posX, 100);

    posX=posX-5;
    if ( posX < -550 ) {
      estado = 2;
      posX=width;
    }
  }
  //tercera pantalla donde ya empiezan los creditos a avanzar 
  else if (estado==2) {
    background(0);
    image(bob, 0, 0);

    fill(255);
    textSize(30);
    text("Personajes principales", 0, 450-posY);
    textSize(20);
    text("Bob esponja", 140, 500-posY);
    text("Don patricio", 140, 550-posY);
    text("Calamardo", 140, 600-posY);
    text("Gary", 140, 650-posY);
    text("Plankton ", 140, 700-posY);
    text("Don Cangrejo", 140, 750-posY);
    text("Arenita Mejillas", 140, 800-posY);
    text("Perlita Cangrejo ", 140, 850-posY);
    text("Sra. Puff", 140, 900-posY );
    text("Karen Plankton", 140, 950-posY);
    posY=posY+2;
    if (posY>1000) {
      estado=3;
      posY=height;
    }
  }
  //cuarta pantalla donde siguen diferentes creditos
  else if (estado==3) {
    image(bob2, 0, 0 );
    textSize(30);
    String s="";
    text(s, 50, 850-posY, 240, 280);
    text("Personajes secundarios", 0, 850-posY);
    textSize(18);
    text("Abuela", 140, 900-posY); 
    text("Anchoas", 140, 950-posY);
    text("Billy", 140, 1000-posY);
    text("burbujas", 140, 1050-posY);
    text("Cabeza de pez realista", 140, 1100-posY);
    text("Calamardo de laboratorio", 140, 1150-posY);
    text("Calamarina Estrella", 140, 1200-posY);
    text("Calamarino Elegante", 140, 1250-posY);
    text("Chico Percebe", 140, 1300-posY);
    text("Pantalones Cuadrados", 140, 1350-posY);
    text("Fiasco", 140, 1400-posY);
    text("Guante del Balde", 140, 1450-posY);
    text("Incidental 118C", 140, 1500-posY);
    text("Incidental 178", 140, 1550-posY);
    text("Incidental C1", 140, 1600-posY);
    text("Larry la Langosta", 140, 1650-posY);
    text("Rey Medusa", 140, 1700-posY);
    text("Rey Neptuno", 140, 1750-posY);
    text("Róbalo Burbuja", 140, 1800-posY);




    posY=posY+2;
    if (posY>1900) {
      estado=4;
      posY=height;
    }
  } 
  //quinta pantalla donde se encuentran los ultimos creditos, de productores y musica
  else if (estado==4) {
    background(0);
    image(bob, 0, 0);

    fill(255);
    textSize(30);
    String s="";
    text(s, 50, +posY, 240, 280);
    text("Music by", 140, +posY);
    textSize(18);
    text("Gregor Narholz", 140, 50+posY);
    textSize(28);
    text("Directed and Produced by", 0, 150+posY);
    textSize(18);
    text("Stephen hillenburg", 120, 200+posY);
    textSize(28);
    text("Producer", 140, 250+posY);
    textSize(18);
    text("Julia Pistor", 140, 300+posY);
    textSize(28);
    text("Animation Directors", 50, 350+posY);
    textSize(18);
    text("Dong Kun Won \nYu Mun Jeong \nHoon choi \nHee Man Yang \nSang KYun Shin", 140, 400+posY);


    posY=posY-2;  
    if (posY<-500) {
      estado=5;
      posY=height;
    }
  }
  //ultima pantalla donde le doy un cierre a todo 
  else if (estado==5) {
    background(0);
    textSize(40);
    text("FIN", 150, 200);
  }
}



//esto lo uso para poder dar click al principio de y que empiezen a pasar los creditos 

void mousePressed() {
  println("click: "+ estado);
  if ( estado==0 ) {
    estado=1;
    posX=width+800;
  } else if ( estado==1 ) {
  }
}
