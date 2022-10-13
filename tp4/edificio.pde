class Edificio {
  int posY;
  int alto;
  int ancho;
  Piso piso;

  Edificio () {
    posY = 100;
    ancho = 220;
    alto = height;
    piso = new Piso ();
  }

  void dibujar (int posX) {
    noStroke ();
    fill (205);
    rect (posX, posY, ancho, alto);
    piso.dibujar (posX+20, posY);
  }
}
