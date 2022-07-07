void perdiste () {
  fill (201, 51, 51);
  conteo = 4;
  background (0);
  perdisteTexto ();
  image (triste, width/2-50, height/2, 100, 100);
  flechaBack ();
}

void ganaste () {
  if (minimo < maximo) {
    image (images[minimo], 0, 0);
    minimo++;
  }
  if (minimo == maximo) {
    background (0);
    ganasteTexto ();
    image (feliz, width/2-50, height/2, 100, 100);
  }
}
