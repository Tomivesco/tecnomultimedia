int vel=200;


void juego() {

fill(255,0,0);
  rect(vel, 450, 70, 10);
}


void keyPressed() {
  if (estado==1) {
  if (key== 'd') {
    vel=vel+3;
  } else {
    rect(vel, 450, 70, 10);
  }
  if (key== 'a') {
    vel=vel-3;
  } else {
    rect(vel, 450, 70, 10);
  }
}
}
