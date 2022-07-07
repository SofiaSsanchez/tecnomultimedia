void textosInicio () {
  //titulo
  textFont (titulo, 60);
  fill (255);
  text ("Frogg", (width/2)-60, 100);
  textSize (20);
  text ("(Clickea una rana para continuar)", width/2- 120, 130);

  textFont (texto);
  text ("Iniciar", 135, 207);
  text ("Creditos", 135, 307);
}


void creditos () {
  fill (255);
  textFont (texto);
  textSize (25);
  text ("Por", width/2-180, height/2-160);
  text ("Sofia Sanchez", width/2-180, height/2-120);
  textSize (15);
  text ("91368/3", width/2-180, height/2-95);
  textSize (25);
  text ("Basado en", width/2-60, height/2);
  text ("Frogger", width/2-60, height/2 + 40);
}

void perdisteTexto () {
  if (conteo == 4) {
    fill (255, 0, 0);
    textSize (30);
    text ("PERDISTE", width/2-110, height/2);
  }
}

void ganasteTexto () {
  fill (92, 155, 56);
  textSize (30);
  text ("GANASTE", width/2-100, height/2);
}

void sigNivelTexto () {
  fill (255);
  textSize (30);
  text ("NIVEL 2", width/2-90, height/2);
  textSize (15);
  text ("Pasa por el puente!", width/2-110, height/2+50);
  text ("Y evita el agua!", width/2-90, height/2+70);
}

void explicacionTexto () {
  fill (255);
  textSize (18); 
  text ("Cruza sin que te choquen!", width/2-175, height/2-90);
  textSize (25);
  text ("Cuidado!", width/2-80, height/2-30);
  textSize (15);
  text ("Solo tenes 15 segundos.", width/2-150, height/2);
}
