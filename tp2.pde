// https://youtu.be/yVg9WqjcPdQ

int cant = 20;
int tamX, tamY;
float linea;

void setup() {
  size(800, 400);
  tamX = width/cant;
  tamY = tamX;
  linea = 1;
}

void draw() {
  cuadricula ();
}
