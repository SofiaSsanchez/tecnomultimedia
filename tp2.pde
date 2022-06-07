int cant = 20;
int tamX, tamY;
int i;

void setup() {
  size(800, 400);
  tamX = width/cant;
  tamY = tamX;
}

void draw() {
  cuadricula ();
}
