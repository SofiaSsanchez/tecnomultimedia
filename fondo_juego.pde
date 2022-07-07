void fondoInicio (float fondo) {
  fondo = map(mouseX, 0, width, 0, 150); 
  background (0, fondo, 0);
}

//nivel 1
void Cuadricula () {
  noStroke ();
  for (int i=0; i<cantidad; i++) {
    for (int j=0; j<cantidad; j++) {
      if (j==1 || j == 14) {
        fill (92, 155, 56);
      } else {
        noFill();
      }
      rectMode (CORNER);
      rect (i*tamX, j*tamY, tamX, tamY);
      if (posX2 == i && posY2 == j) {
        image (personaje, i*tamX, j*tamY, tamX, tamY);

        for (int g=1; g < cant; g++) {
          if (i*tamX > posX[g] && i*tamX + tamX < posX[g] + 100 && j*tamY > posY [g] && j*tamY + tamY <= posi[g]) {
            conteo = 4;
            posX2 = 8;
            posY2 = 15;
          }
        }
      }
    }
  }
}

void Cuadricula2 () {
  noStroke ();
  for (int i=0; i<cantidad; i++) {
    for (int j=0; j<cantidad; j++) {
      if (j==1 || j == 14) {
        fill (92, 155, 56);
      } else {
        noFill();
      }
      if (j==5) {
        ellipseMode (CORNER);
        fill (92, 155, 56);
        ellipse (3, j*tamY, tamX, tamY);
        ellipse (30, j*tamY, tamX, tamY);
        ellipse (70, j*tamY, tamX, tamY);
        ellipse (160, j*tamY, tamX, tamY);
        ellipse (340, j*tamY, tamX, tamY);
        ellipse (270, j*tamY, tamX, tamY);
      }
      if (j==5) {
        fill (91, 160, 219);
      }
      rectMode (CORNER);
      rect (i*tamX, j*tamY, tamX, tamY);
      if (posX2 == i && posY2 == j) {
        image (personaje, i*tamX, j*tamY, tamX, tamY);

        for (int g=1; g < cant; g++) {
          if (i*tamX > posX[g] && i*tamX + tamX < posX[g] + 100 && j*tamY > posY [g] && j*tamY + tamY <= posi[g]) {
            conteo = 4;
            posX2 = 8;
            posY2 = 15;
          }
        }
      }
    }
  }
}
