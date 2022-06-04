void armarCuadrados () {
  background (0);
  for (i=0; i < 40; i++) {
    if (i % 2 == 0) {
      fill (0);
    } else {
      fill (255);
    }
    float radio = (width/3) - i*6.8;
    rect (width/2, height/2, radio, radio);
  }
  text ("Presione F para comenzar.", width/2 - 20, 40);
  text ("Presione R para reiniciar.", width/2 - 20, 80);
}

void loco() {
  float incrementoMov = 0.05;
  translate (width/2, height/2);
  background (0);
  for (i=0; i < 40; i++) {
    if (mov < 800) {
      rotate (map (mov, 0, width, PI/2, PI/80));
      translate (0, map (mov, 0, width, PI/2, PI/80));
      mov = mov + incrementoMov;
    }
    if (i % 2 == 0) {
      fill (0);
    } else {
      fill (255);
    }
    float radio = (width/3) - i*6.8;
    rect (0, 0, radio, radio);
  }
  if (mov > 800 && i == 40) {
    i=0;
    mov=0;
  }
}
