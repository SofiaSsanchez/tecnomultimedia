class Fondo {
  PImage nube;
  PImage ciudadFondo;

  Fondo () {
    nube = loadImage ("nube.png");
    ciudadFondo = loadImage ("ciudad.png");
  }

  void dibujar () {
    image (nube, 200, 20, 180, 63);
    image (nube, 10, 12, 100, 50);
    image (ciudadFondo, 0, 50, width, height);
  }
}
