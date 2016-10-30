import processing.pdf.*;
boolean saveOneFrame = false;

PImage kendrick;


void setup() {
  size(500, 500);
  kendrick = loadImage("kendrick.png");
  noStroke(); 
  
  frameRate(24);
}


void draw() {
  if (saveOneFrame == true) {
    beginRecord(PDF, "frame-####.pdf");
  }
  
  background(0);
  
  int widthStep = 4;
  int heightStep = 4;
  
  for (int i = 0; i < width; i+=widthStep) {
    for (int j = 0; j < height; j+=heightStep) {
      
      float r = random(8);
      color c = kendrick.get(i, j);
      
      fill(c);
      ellipse(i + 2, j + 2, r, r);
    }
  }
  
  if (saveOneFrame == true){
    endRecord();
    saveOneFrame = false;
  }
}


void mousePressed() {
  saveOneFrame = true;
}