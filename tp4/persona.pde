class Persona {
  PImage [] imagenPersona = new PImage [3];

  Persona () {
    for (int i = 1; i <= 2; i++) {
      imagenPersona [i] = loadImage ("persona" + i + ".png");
    }
  }

  void dibujar () {
    image (imagenPersona [1], 455, 310, 105, 100);
    image (imagenPersona [2], 200, 310, 105, 100);
  }
}
