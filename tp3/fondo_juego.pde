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

  for (int col=0; col<cantidad; col++) {
    for (int fil=0; fil<cantidad; fil++) {
      if (fil==1 || fil == 14) {
        fill (92, 155, 56);
      } else {
        noFill();
      }
      if (fil==5) {
        fill (51, 114, 167);
        rect (col*tamX, fil*tamY, tamX, tamY);
        if (fil==5 && col == 7) {
          fill (92, 155, 56);      
          rect (col*tamX, fil*tamY, tamX, tamY);
          if (col == posX2 && fil == posY2) {
            esPuente = true;
          } else {
            esPuente = false;
          }
        }
      }
      rectMode (CORNER);
      rect (col*tamX, fil*tamY, tamX, tamY);
      if (posX2 == col && posY2 == fil) {
        image (personaje, col*tamX, fil*tamY, tamX, tamY);

        for (int g=1; g < cant; g++) {
          if (col*tamX > posX[g] && col*tamX + tamX < posX[g] + 100 && fil*tamY > posY [g] && fil*tamY + tamY <= posi[g]) {
            conteo = 4;
            posX2 = 8;
            posY2 = 15;
          }
        }
      }
    }
  }
}
