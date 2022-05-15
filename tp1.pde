//pos para el cartel de error
float posUno; 
float posDos;

//pos para dv
float X2;
float Y2;

//imagen meme
PImage mem;

//imagen para la pantalla
PImage pantalla;

//logos del final
PImage logo;

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
float move17;

//tiempo
int conteo;

//opacidad
float opa;

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
  move17 = 406;

  opa = 1000;

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

  X2 = random (50, 500);
  Y2 = random (50, 300);

  textFont (sw); //fuente de star wars

  println (conteo); //mostrar el conteo

  textAlign (CENTER);

  textSize (15);

  fill (255);

  //pantalla 1 y final
  if (conteo >= 3  && conteo < 125 || conteo >= 605 && conteo < 680) {
    pantalla = loadImage ("estrellas.png");
    image(pantalla, 0, 0, width, height);
    conteo++;
  }

  //texto 1
  if (conteo >= 3  && conteo < 55) {
    textSize (15);
    text ("directed by", width/2, height/2);
    textSize (20);
    text ("george lucas", width/2, height/2 + 25);
  }

  //texto 2
  if (conteo >= 55  && conteo < 85) {
    textSize (10);
    text ("screenplay by", width/2, height/2);
    textSize (15);
    text ("george lucas & jonathan hales", width/2, height/2 + 20);
    textSize (10);
    text ("story by", width/2, height/2 + 50);
    textSize (15);
    text ("george lucas", width/2, height/2 + 70);
  }

  //texto 3
  if (conteo >= 85  && conteo < 105) {
    textSize (10);
    text ("produced by", width/2, height/2);
    textSize (15);
    text ("rick mccallum", width/2, height/2 + 20);
  }

  //texto 4
  if (conteo >= 105  && conteo < 125) {
    textSize (10);
    text ("executive producer", width/2, height/2);
    textSize (15);
    text ("george lucas", width/2, height/2 + 20);
  }

  //pantalla 2
  if (conteo >= 125 && conteo < 225) {
    pantalla = loadImage ("img2.jpg");
    image(pantalla, 0, 0, width, height);
    conteo++;
  }

  //pantanlla 3
  if (conteo >= 225 && conteo < 325) {
    pantalla = loadImage ("img3.jpg");
    image(pantalla, 0, 0, width, height);
    conteo++;
  }

  //pantanlla 4
  if (conteo >= 325 && conteo < 425) {
    pantalla = loadImage ("img4.jpg");
    image(pantalla, 0, 0, width, height);
    conteo++;
  }

  //pantanlla 5
  if (conteo >= 425 && conteo < 605) {
    pantalla = loadImage ("img5.jpg");
    image(pantalla, 0, 0, width, height);
    conteo++;
  }

  //texto 1
  if (conteo >= 125 && conteo < 600) {
    textSize (10);
    text ("editor and sound designer", width/2, move1);
    move1 = move1 - 2;
    textSize (15);
    text ("ben burtt", width/2, move7);
    move7 = move7 - 2;

    //texto 2
    if (conteo > 175 && conteo < 600) {
      textSize (10);
      text ("music by", width/2, move2);
      move2 = move2 - 2;
      textSize (15);
      text ("john williams", width/2, move8);
      move8 = move8 - 2;

      //texto 3
      if (conteo >= 245 && conteo < 600) {
        textSize (10);
        text ("starring", width/2, move3);
        move3 = move3 - 2;
        textSize (15);
        text ("natalie portman", width/2, move9);
        move9 = move9 - 2;
        text ("hayden christensen", width/2, move13);
        move13 = move13 - 2;
        text ("and frank oz as yoda", width/2, move17);
        move17 = move17 - 2;

        //texto 4
        if (conteo > 355 && conteo < 605) {
          textSize (10);
          text ("co-starring", width/2, move4);
          move4 = move4 - 2;
          textSize (15);
          text ("ian mcdiarmid", width/2, move10);
          move10 = move10 - 2;
          text ("pernilla august", width/2, move14);
          move14 = move14 - 2;

          //texto 5
          if (conteo > 385 && conteo < 605) {
            text ("oliver ford davies", width/2, move5);
            move5 = move5 - 2;
            text ("temuera morrison", width/2, move11);
            move11 = move11 - 2;
            text ("silas carson", width/2, move15);
            move15 = move15 - 2;

            //texto 6
            if (conteo > 415 && conteo < 605) {
              text ("kenny baker", width/2, move6);
              move6 = move6 - 2;
              text ("ahmed best", width/2, move12);
              move12 = move12 - 2;
              text ("samuel l. jackson", width/2, move16);
              move16 = move16 - 2;
            }
          }
        }
      }
    }
  }

  //png de dv
  if (conteo == 103 || conteo == 359 || conteo == 583) {
    logo = loadImage ("dv.png");
    image(logo, X2, Y2, 100, 100);
  }

  //secuencia de logos
  if (conteo >= 605 && conteo < 610) {
    logo = loadImage ("logo1.png");
    image(logo, width/2-120, height/2-30, 250, 90);
  }
  if (conteo >= 610 && conteo < 614) {
    logo = loadImage ("logo2.png");
    image(logo, width/2-120, height/2-30, 250, 90);
  }
  if (conteo >= 614 && conteo < 618) {
    logo = loadImage ("logo3.png");
    image(logo, width/2-120, height/2-30, 250, 90);
  }
  if (conteo >= 618 && conteo < 621) {
    logo = loadImage ("logo4.png");
    image(logo, width/2-120, height/2-30, 250, 90);
  }
  if (conteo >= 621 && conteo < 624) {
    logo = loadImage ("logo5.png");
    image(logo, width/2-120, height/2-30, 250, 90);
  }
  if (conteo >= 624 && conteo < 626) {
    logo = loadImage ("logo6.png");
    image(logo, width/2-120, height/2-30, 250, 90);
  }
  if (conteo >= 626 && conteo < 628) {
    logo = loadImage ("logo7.png");
    image(logo, width/2-120, height/2-30, 250, 90);
  }
  if (conteo >= 628 && conteo < 629) {
    logo = loadImage ("logo8.png");
    image(logo, width/2-120, height/2-30, 250, 90);
  }
  if (conteo >= 629 && conteo < 655) {
    tint(opa);
    logo = loadImage ("logo9.png");
    image(logo, width/2-120, height/2-30, 250, 90);
    if (conteo > 633 && conteo < 655) {
      opa = opa - 50;
    }
  }

  noTint();

  //"to be continue"
  if (conteo >= 670 && conteo < 680) {
    text ("to be continue...", width*1/4, 310);
  }

  //reinicio
  if (conteo == 680) {
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

      //las variables para deslizar el texto vuelven
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
      move17 = 406;

      //opa se reinicia
      opa = 1000;
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

      //CARTEL ERROR
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
