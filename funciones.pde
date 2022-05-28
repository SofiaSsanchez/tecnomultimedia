
void armarCuadrados1 () {
  for (int i=0; i<cant; i++) {
    tam = width - (i*40);
    if (i%2 == 0) {
      fill (0);
    } else {
      fill (255);
    }
    rect (width/2, height/2, tam, tam);
    tamfinal = tam - tam/2;
  }
}

void estaEnElCentro () {
  if (mouseX > width/2 - tamfinal && mouseX < width/2 + tamfinal && 
    mouseY > height/2 - tamfinal && mouseY <  height/2 + tamfinal) {
    centro = true;
  } else {
    centro = false;
  }
  fill (255, 0, 0);
  rect (width/2, height/2, tam, tam);
}

void armarCuadrados2 () {
  for (int i=0; i<cant; i++) {
    tam = width - (i*40);
    if (i%2 == 0) {
      fill (255);
    } else {
      fill (0);
    }
    rect (width/2, height/2, tam, tam);
    tamfinal = tam - tam/2;
  }
}

void sico () {
  float chico, grande;
  chico = random (5, 40);
  grande = random (200, 400);
  cant = 10;
  frameRate (15);
  if (frameCount % 2 == 0) {
    armarCuadrados1();
    elipseAlta (chico, grande);
  } else {
    armarCuadrados2 ();
    elipseAncha (chico, grande);
  }
}

void elipseAlta (float chico, float grande) {
  noFill ();
  stroke (255, 0, 0);
  ellipse (width/2, height/2, chico, grande);
  noStroke ();
}

void elipseAncha (float chico, float grande) {
  noFill ();
  stroke (255, 0, 0);
  ellipse (width/2, height/2, grande, chico);
  noStroke ();
}
