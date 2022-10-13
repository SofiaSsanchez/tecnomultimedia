class Ciudad {
  int cantEdificio;
  int ubicacionEdificioX;
  Edificio edificio;
  Persona persona;

  Ciudad () {
    cantEdificio = 2;
    edificio = new Edificio ();
    persona = new Persona ();
  }

  void dibujar () {
    ubicacionEdificioX = 20;
    for (int i = 0; i < cantEdificio; i++) {
      edificio.dibujar (ubicacionEdificioX);
      ubicacionEdificioX = 280;
    }
    persona.dibujar ();
  }
}
