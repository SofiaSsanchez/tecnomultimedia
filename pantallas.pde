void pantallas () {
  //juego
  if (conteo == 1) {
    background (0);
    Cuadricula ();
    autos ();
    flechaBack ();
    timer ();
    minimo = 1;
    if (posY2 == 1) {
      conteo = 5;
    }
  }

  //creditos
  if (conteo == 2) {
    background (92, 155, 56);
    creditos ();
    flechaBack ();
    image (ejemplo, 170, 260, 120, 80);
  }

  //incio
  if (conteo == 3) {
    fondoInicio (mouseX);
    botonesInicio ();
    textosInicio ();
    minimo = 1;
  }

  //perdiste
  if (conteo == 4)
    perdiste ();

  //nivel 2 
  if (conteo == 5) {
    background (0);
    sigNivelTexto ();
    flechaBack ();
    flechaSig ();
  }

  //ganaste 
  if (conteo == 6) {
    ganaste ();
    flechaBack ();
  }

  //juego nivel 2
  if (conteo == 7) {
    background (0);
    Cuadricula2 ();
    autos ();
    flechaBack ();
    timer ();
    minimo = 1;
    if (posY2 == 1) {
      conteo = 6;
    }
    dir[3] = 2;
    dir[1] = 1;
  }
}
