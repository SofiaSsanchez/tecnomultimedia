int i=0;
float mov=0;

void setup() {
  size(800, 800);
  rectMode(RADIUS);
  frameRate(20);
  noStroke ();
  textMode (CENTER);
  textSize(30);
  background (0);
  armarCuadrados ();
}

void draw () {
  if (keyPressed) {
    if (key == 'f' || key == 'F') {
      loco ();
    }
  }


  if (keyPressed) {
    if (key == 'r' || key == 'R') {
      i = 0;
      mov = 0;
      armarCuadrados ();
    }
  }
}
