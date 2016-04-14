import processing.sound.*;
SoundFile file;

void setup() {
  size(640, 360);
  background(255);
    
  // Load a soundfile from the /data folder of the sketch and play it back
  file = new SoundFile(this, "beat1.mp3");
  frameRate(5); //<>//
  
}      

void draw() {
  background(247);
}

void keyReleased(){
  if(key == '1'){
    file.play();
    stroke(3);
    fill(0, random(100,255), random(100, 255) );
    rect(30,30,80,80);
    
  }
  
}