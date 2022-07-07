int conteo; //pantallas

//imagenes basicas
PImage flecha;
PImage flecha2;

PImage sig;
PImage sig2;

PImage ejemplo;

//rana triste y feliz
PImage triste;
PImage feliz;

//fuentes de texto
PFont titulo;
PFont texto;

//timer
int s = 0;
int m = 0;

//conteo para las imagenes de "ganaste"
int maximo = 16;
int minimo = 1;

int cant = 4;

//arreglos
PImage [] rana = new PImage [cant]; //imagenes de ganaste
PImage [] images = new PImage [maximo]; //imagenes de ganaste
PImage [] auto = new PImage [cant]; //autos
int [] posX = new int [cant]; //pos X de los autos
int [] posY = new int [cant];// pos Y de los autos
int [] dir= new int [cant];// velocidad de los autos
int [] posi= new int [cant];//para la colision

int cantidad = 16; //cantidad de cuadrados para la grilla del fondo
int tamX, tamY; //tam para los cuadrados
int posX2;//pos de la rana X
int posY2;//pos de la rana Y
PImage personaje; //imagen de la rana

boolean esPuente = false;

void setup () {
  size(400, 400);
  background (0);

  conteo = 3;

  flecha = loadImage ("flecha.png");
  flecha2 = loadImage ("flecha2.png");
  sig = loadImage ("sig.png");
  sig2 = loadImage ("sig2.png");
  ejemplo = loadImage ("frogg.png");
  triste = loadImage ("triste.png");
  feliz = loadImage ("feliz.png");

  texto = createFont ("texto.TTF", 15);
  titulo = createFont ("fuente.ttf", 15);

  for (int i=1; i < maximo; i++) {
    images [i] = loadImage ("win"+ i + ".png");
  }
  for (int i=1; i < cant; i++) {
    auto [i] = loadImage ("auto"+ i + ".png");
    rana[i] = loadImage ("rana" + i + ".png");
    posX [i] = -110;
  }

  posY[1] =  50;
  posY[2] =  150;
  posY[3] =  250;

  posi[1] =  100;
  posi[2] =  200;
  posi[3] =  300;

  tamX = width/cantidad;
  tamY = height/cantidad;
  posX2 = 8;
  posY2 = 15;
  personaje = loadImage ("personaje.png");
}

void draw () {
  pantallas ();
}
