/**
 * Explorando los conceptos random() y el dibujo sobre cuadricula
 *    
 * MouseX          : Ancho de diagonal izq
 * MouseY          : Ancho de diagonal der
 * Click izq       : nuevo conjunto
 * 
 * KEYS
 * s                   : save png
 */


int tileCount = 20;
int actRandomSeed = 0;
boolean showGrid = false;


void setup() {
  size(600, 600);
}


void draw() {

  background(255);
  smooth();
  noFill();
  strokeCap(ROUND);

  randomSeed(actRandomSeed);
  
  if(showGrid){
    drawGrid();
  }

}

void drawNumber(int posX, int posY,int toggle){
  fill(255, 0, 0);
  text(str(toggle), posX + 12, posY + 20);
}

void drawGrid(){
  strokeWeight(1);
  stroke(255,0,0);
  for (int gridY = 0; gridY<tileCount; gridY++) {
      int posY = height/tileCount * gridY;
      line(0, posY, width, posY);
  }
  
  for (int gridX=0; gridX<tileCount; gridX++) {
      int posX = width/ tileCount * gridX;
      line(posX, 0, posX, height);
  }
  
}


void mousePressed() {
  actRandomSeed = (int) random(100000);
}

void keyReleased(){
  if (key == 's' || key == 'S') saveFrame("##_##.png");
  if (key == 'g' || key == 'G') showGrid = !showGrid;

}