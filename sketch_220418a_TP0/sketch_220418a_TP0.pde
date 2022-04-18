void setup(){
  size (400,400); //pixeles generados   
}

void draw(){
  background (0); //color de los pixeles generados 
  fill(250,200,150); //color de la "cara"
  rect(75,50,250,300,30); //forma de la cara
  fill(255,255,0); //color que va a tener rectangulo que forma el "pelo"
  rotate(-PI/40); //inclinacion del rectangulo que va a tener forma de pelo 
  rect(50,40,150,30); //rectangulo para el pelo
  rotate(PI/25); //otra inclinacion para la otra parte del pelo 
  rect(206,25,150,30); //rectangulo de la ultima parte del pelo 
  
  fill(255,255,255);//color de ciculos blancos que forma una parte del ojo
  ellipse(150,150,80,80);//circulo que forma una parte del ojo
  ellipse(265,150,80,80);
  
  fill(0,255,0);//color verde en el ojo
  ellipse(150,150,50,50); //otro circulos que forma parte del ojo
  ellipse(265,150,50,50);
  
  fill(0);//ultimo color (negro) para dar finalizado al ojo 
  ellipse(150,150,25,25);//los circulos negros que dan a entender el ojo
  ellipse(265,150,25,25);
  
  fill(255,255,255);//color para dar un toque de brillo al ojo 
  ellipse(155,140,7,7);//cordenadas del circulo que dan este toque de brillo
  ellipse(270,140,7,7);
  
  strokeWeight(2);//para dar grosor a las lineas
  line(205,150,200,225); //linea que forma una parte de la nariz
  line(200,223,250,220);//la otra linea que cierra y da una forma de nariz
  
  line(170,260,220,273);//primer linea para la forma de la boca
  line(220,273,270,258);//ultima linea que cierra la boca y le da el ultimo toque

  }
