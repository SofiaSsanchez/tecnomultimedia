//pos para el cartel de error
float posUno; 
float posDos;

//imagen meme
PImage mem;

//imagen para la pantalla
PImage pantalla;

//fuente de ERROR
PFont error;

//fuente "Star Wars"
PFont sw;

//para mover el texto
float move1; 
float move2; 
float move3; 
float move4; 
float move5; 
float move6;
float move7; 
float move8; 
float move9;
float move10; 
float move11;
float move12; 
float move13; 
float move14;
float move15;
float move16;

//tiempo
int conteo;

void setup () {
  size (566, 346);

  //reloj
  conteo = 1;

  //pos para el cartel de error
  posUno = random (150, 350);
  posDos = random (150, 250);

  //imagen de fondo
  pantalla = loadImage ("img1.jpg");

  //meme
  mem = loadImage("meme.jpg");

  //cargar fuente de Star Wars
  sw = createFont ("Starjout.ttf", 15);

  //cargar fuente para el cartel ERROR
  error = loadFont ("Cambria-13.vlw");

  //deslizar el texto
  move1 = 346;
  move2 = 346;
  move3 = 346;
  move4 = 346;
  move5 = 346;
  move6 = 346;
  move7 = 366;
  move8 = 366;
  move9 = 366;
  move10 = 366;
  move11 = 366;
  move12 = 366;
  move13 = 386;
  move14 = 386;
  move15 = 386;
  move16 = 386;

  //primera pantalla - TITULO -
  image(pantalla, 0, 0, width, height);

  //BOTON DE INICIO
  fill (211, 211, 41);
  rect (217, 267, 112, 30);

  //letras del boton
  textFont (sw);
  textSize (10);
  fill (0);
  text ("press to start", 229, 287);
}

void draw () {

  textFont (sw); //fuente de star wars

  println (conteo); //mostrar el conteo

  textAlign (CENTER);

  fill (255);

  //pantalla 1 | creditos - director |
  if (conteo >= 3  && conteo < 125) {
    pantalla = loadImage ("img3.jpg");
    image(pantalla, 0, 0, width, height);
    conteo++;
  }

  //texto 1
  if (conteo >= 3  && conteo < 75) {
    text ("directed by", width*1/4, 305);
    text ("george lucas", width*1/4, 320);
  }

  //texto 2
  if (conteo >= 75  && conteo < 95) {
    text ("screenplay by", width*1/4, 275);
    text ("george lucas & jonathan hales", width*1/4, 290);
    text ("story by", width*1/4, 305);
    text ("george lucas", width*1/4, 320);
  }

  //texto 3
  if (conteo >= 95  && conteo < 115) {
    text ("produced by", width*1/4, 305);
    text ("rick mccallum", width*1/4, 320);
  }

  //texto 4
  if (conteo >= 115  && conteo < 125) {
    text ("executive producer", width*1/4, 305);
    text ("george lucas", width*1/4, 320);
  }

  //pantalla 2
  if (conteo >= 125 && conteo < 175) {
    pantalla = loadImage ("img4.jpg");
    image(pantalla, 0, 0, width, height);
    conteo++;
  }

  //pantanlla 2.2
  if (conteo >= 175 && conteo < 255) {
    pantalla = loadImage ("img6.jpg");
    image(pantalla, 0, 0, width, height);
    conteo++;
  }

  //pantanlla 3
  if (conteo >= 255 && conteo < 325) {
    pantalla = loadImage ("img2.jpg");
    image(pantalla, 0, 0, width, height);
    conteo++;
  }

  //pantanlla 3.2
  if (conteo >= 325 && conteo < 490) {
    pantalla = loadImage ("img5.jpg");
    image(pantalla, 0, 0, width, height);
    conteo++;
  }

  //pantanlla final
  if (conteo >= 490 && conteo < 700) {
    pantalla = loadImage ("fin.jpg");
    image(pantalla, 0, 0, width, height);
    conteo++;
  }

  //texto 1
  if (conteo >= 125 && conteo < 700) {
    text ("editor and sound designer", width/2, move1--);
    text ("ben burtt", width/2, move7--);

    //texto 2
    if (conteo > 175 && conteo < 700) {
      text ("music by", width/2, move2--);
      text ("john williams", width/2, move8--);

      //texto 3
      if (conteo >= 245 && conteo < 700) {
        text ("natalie portman", width/2, move3--);
        text ("hayden christensen", width/2, move9--);
        text ("and frank oz as yoda", width/2, move13--);

        //texto 4
        if (conteo > 345 && conteo < 700) {
          text ("co-starring", width/2, move4--);
          text ("ian mcdiarmid", width/2, move10--);
          text ("pernilla august", width/2, move14--);

          //texto 5
          if (conteo > 405 && conteo < 700) {
            text ("oliver ford davies", width/2, move5--);
            text ("temuera morrison", width/2, move11--);
            text ("silas carson", width/2, move15--);

            //texto 6
            if (conteo > 465 && conteo < 700) {
              text ("kenny baker", width/2, move6--);
              text ("ahmed best", width/2, move12--);
              text ("samuel l. jackson", width/2, move16--);
            }
          }
        }
      }
    }
  }

  //pantalla final + "to be continue"
  if (conteo >= 700 && conteo < 750) {
    pantalla = loadImage ("estrellas.png");
    image(pantalla, 0, 0, width, height);
    text ("to be continue...", width*1/4, 310);
    conteo++;
  }

  //reinicio
  if (conteo == 750) {
    conteo = 1;
    if (conteo == 1) {
      pantalla = loadImage ("img1.jpg");
      image(pantalla, 0, 0, width, height);

      textAlign (LEFT);

      //BOTON DE INICIO
      fill (211, 211, 41);
      rect (217, 267, 112, 30);

      //letras del boton
      textFont (sw);
      textSize (10);
      fill (0);
      text ("press to start", 229, 287);

      //las variables para deslizar el texto vuelven a cero
      move1 = 346;
      move2 = 346;
      move3 = 346;
      move4 = 346;
      move5 = 346;
      move6 = 346;
      move7 = 366;
      move8 = 366;
      move9 = 366;
      move10 = 366;
      move11 = 366;
      move12 = 366;
      move13 = 386;
      move14 = 386;
      move15 = 386;
      move16 = 386;
    }
  }
}


void mouseClicked () { //mostrar el meme y comenzar el conteo

  //var para la pos del meme
  float X;
  float Y;

  //pos del meme
  X = random (1, 480);
  Y = random (1, 280);
  if (conteo < 3) {
    //lugar donde se hace click para que aparezca el meme
    if (mouseX > posUno+122 && mouseX < posUno+122+15 && mouseY > posDos+3 && mouseY < posDos+3+15) {
      //mostrar meme
      image(mem, X, Y, 100, 100);
      conteo++;
    }
  }
}


void mouseReleased() { //boton de error
  if (conteo < 3) {
    if (mouseX > 217 && mouseY > 267 && mouseX < 217 + 112 && mouseY < 267 + 30) {
      //CARTEL DE ERROR

      textAlign (LEFT);

      //cartel fondo azul
      fill (60, 120, 237);
      rect (posUno, posDos, 140, 85);

      //cartel rect crema
      fill (250, 237, 184);
      rect (posUno + 5, posDos + 20, 130, 60);

      //palabras dentro del cartel
      textFont (error);
      fill (0);
      text ("Press X to continue", posUno+9, posDos+34);

      //cuadrado rojo
      fill (255, 0, 0);
      rect (posUno+122, posDos+3, 15, 15);

      //X del cartel
      fill (0);
      line(posUno+122, posDos+3, posUno+137, posDos+18);
      line(posUno+122, posDos+18, posUno+137, posDos+3);

      textAlign (CENTER);
      //palabra ERROR
      text ("ERROR", posUno+30, posDos+15);
    }
  }
}
