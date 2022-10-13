class Piso {
  int cantPiso;
  Ventana ventana;

  Piso () {
    cantPiso = 3;
    ventana = new Ventana ();
  }

  void dibujar (int posVentanaX, int posVentanaY) {
    for (int i = 0; i < cantPiso; i++) {
      ventana.dibujar (posVentanaX, posVentanaY);
      posVentanaY = posVentanaY + 80;
    }
  }
}
