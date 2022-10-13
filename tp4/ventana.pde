class Ventana {
  PImage imagenVentana;
  PImage ventanaCerrada;
  int ancho, alto;

  Ventana () {
    ancho = 70;
    alto = 65;
    imagenVentana = loadImage ("ventana.png");
    ventanaCerrada = loadImage ("ventana2.png");
  }

  void dibujar (int posX, int posY) {
    dibujarVentana (posX, posY);
    posX = posX + 100;
    dibujarVentana (posX, posY);
  }

  void dibujarVentana (int posX, int posY) {
    if (mouseX > posX && mouseY > posY && mouseX < posX + ancho && mouseY < posY + alto) {
      image (ventanaCerrada, posX, posY, ancho, alto);
    } else {
      image (imagenVentana, posX, posY, ancho, alto);
    }
  }
}
