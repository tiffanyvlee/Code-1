import processing.pdf.*;
boolean saveOneFrame = false;

PImage kendrick;


void setup() {
  size(500, 500);
  kendrick = loadImage("kendrick.png");  
  frameRate(24);
}


void draw() {
  if (saveOneFrame == true) {
    beginRecord(PDF, "frame-####.pdf"); 
  }
  
  background(255);
  int widthStep = 20;
  int heightStep = 20;

  for (int i = 0; i < width; i+=widthStep) {
    for (int j = 0; j < height; j+=heightStep) {
      
      float d = dist(i/20, j/20, mouseX, mouseY);
      color c = kendrick.get(i, j);
      
      fill(c);
      ellipse(i+10, j+10, d/10, d/10);
    }
  }
  
   if (saveOneFrame == true) {
    endRecord();
  saveOneFrame = false;
  }
}


void mousePressed() {
  saveOneFrame = true;
}