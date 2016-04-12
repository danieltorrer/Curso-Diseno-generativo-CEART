// Ex2_3_1

/**
 * Muestra los colores que hay de distancia entre dos colores generados aleatoriamente
 * 
 * MOUSE
 * izq          : Nuevo conjunto de colores
 * 
 * KEYS
 * 1                   : Modelo de color
 */
 
int tileCountX = 10;
int tileCountY = 5;

// Arreglo de colores
color[] colorsLeft = new color[tileCountY];
color[] colorsRight = new color[tileCountY];
color[] colors;

boolean interpolateShortest = true;


void setup() { 
  size(700, 700);
  colorMode(HSB,360,100,100,100); 
  noStroke();
} 


void draw() { 

  

} 

void mouseReleased() {
  shakeColors();
}

void shakeColors() {
  for (int i=0; i<tileCountY; i++) {
    colorsLeft[i] = color(random(0,60), random(0,100), 100);
    colorsRight[i] = color(random(160,190), 100, random(0,100));
  }
}

void keyReleased() {
  if (key == '1') interpolateShortest = !interpolateShortest;
  if (key == 's') saveFrame("###.png");
}