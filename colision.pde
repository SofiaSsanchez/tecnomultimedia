int cant = 4;
int posX;
int dir;

int cantidad = 16;
int tamX, tamY;
int posX2;
int posY2;


void setup () {
  size (400, 400);
  posX = -110;
  dir = 2;

  tamX = width/cantidad;
  tamY = height/cantidad;
  posX2 = 8;
  posY2 = 15;
}

void draw () {
  background (0);
  noStroke ();
  for (int i=0; i<cantidad; i++) {
    for (int j=0; j<cantidad; j++) {
      if (posX2 == i && posY2 == j) {
        fill (255, 0, 0);
        rect (i*tamX, j*tamY, tamX, tamY);
      } else {
        noFill();
      }
      rectMode (CORNER);
      rect (i*tamX, j*tamY, tamX, tamY);
    }
  }

  fill (255);
  if (posX <= width + 50) {
    rect (posX, 50, 100, 50);
    posX = posX+ dir;
  } else {
    posX = -110;
  }
}

void keyPressed() {
  if (keyCode == RIGHT) {
    posX2++;
  } else if (keyCode == LEFT) {
    posX2--;
  } else if (keyCode == UP) {
    posY2--;
  } else if (keyCode == DOWN) {
    posY2++;
  }
}
