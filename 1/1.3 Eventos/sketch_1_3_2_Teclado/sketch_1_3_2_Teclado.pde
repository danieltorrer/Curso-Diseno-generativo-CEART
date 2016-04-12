void setup(){
  size(600, 600);
  println("Función setup");
  background(57,175,54);
}
// animar
void draw(){

  ellipse(mouseX, mouseY, 50, 50);
  //println("Función draw");
}

void keyReleased(){

 if( key == 's'){
  //println("Hola");
  saveFrame("hola_##.png");
 }
 else{
   println("No soy una S");
 }
}
