void cuadricula () {
  for (int k=0; k<cant; k++) {
    rect(0, tamY*k, tamX, tamY);
    if (mousePressed) {
      mousepres2 (k, mouseX, mouseY);
    } else {
      primero(k);
    }
    if (k%2 == 0) {
      for (i=0; i<cant; i++) {
        rect(i*tamX + 30, tamY*k, tamX, tamY);
        if (mousePressed) {
          mousepres1 (k, i, mouseX, mouseY);
        } else {
          relleno (i, k);
        }
      }
    } else { 
      for (i = 0; i<cant; i++) {
        rect(i*tamX, tamY*k, tamX, tamY);
        if (mousePressed) {
          mousepres1 (k, i, mouseX, mouseY);
        } else {
          relleno (i, k);
        }
      }
    }
  }
}


void relleno (int i, int j) {
  if (i%2 == 0) {
    if (j%2 == 0) {
      fill (255);
    } else {
      fill (0);
    }
  }
  if (i%2 != 0) {
    if (j%2 != 0) {
      fill (255);
    } else {
      fill (0);
    }
  }
}



void primero (int i) {
  if (i%2 == 0) {
    fill (255);
  } else {
    fill (0);
  }
  if (i%2 != 0) {
    fill (255);
  } else {
    fill (0);
  }
}


void mousepres1 (int i, int j, int posX, int posY) { 
  float color1 = map (posX, 0, width, 0, 100);
  float color2 = map (posY, 0, width, 150, 255);
  if (i%2 == 0) {
    if (j%2 == 0) {
      fill (color2, color2, color2);
    } else {
      fill (color1, color1, color1);
    }
  }
  if (i%2 != 0) {
    if (j%2 != 0) {
      fill (color2, color2, color2);
    } else {
      fill (color1, color1, color1);
    }
  }
}


void mousepres2 (int i, int posX, int posY) {
  float color1 = map (posX, 0, width, 0, 100);
  float color2 = map (posY, 0, width, 150, 255);
  if (i%2 == 0) {
    fill (color2, color2, color2);
  } else {
    fill (color1, color1, color1);
  }
  if (i%2 != 0) {
    fill (color2, color2, color2);
  } else {
    fill (color1, color1, color1);
  }
}
