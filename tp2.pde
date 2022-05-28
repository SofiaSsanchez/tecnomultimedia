int cant = 10;
boolean centro = false;
int tam;
int tamfinal;

void setup() {
  size(400, 400);
  rectMode(CENTER);
}

void draw () {
  armarCuadrados1 ();
  estaEnElCentro ();
  if (centro) {
    sico();
  }
}
