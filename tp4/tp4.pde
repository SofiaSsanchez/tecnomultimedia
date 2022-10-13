Ciudad ciudad;
Fondo fondo;

void setup () {
  size (600, 400);
  ciudad = new Ciudad ();
  fondo = new Fondo ();
}

void draw () {
  background(57, 150, 219);
  fondo.dibujar();
  ciudad.dibujar();
}
