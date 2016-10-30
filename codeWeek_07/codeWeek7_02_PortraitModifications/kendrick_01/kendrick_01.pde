import processing.pdf.*;
boolean saveOneFrame = false;

PImage kendrick;


void setup() {
  size(500, 500);
  kendrick = loadImage("kendrick.png");
  stroke(255);
  
  frameRate(24);
}


void draw() {
  if (saveOneFrame == true) {
    beginRecord(PDF, "frame-####.pdf");
  }
  
  background(255);
  
  int widthStep = 2;
  int heightStep = 2;
  
  for (int i = 0; i <= height; i += heightStep) {
    for (int j = 0; j <= width; j += widthStep) {
      
      color c = kendrick.get(int(j + (sin(radians(frameCount+i+j))*20)), i);
      float r = red(c);
      float g = green(c);
      float b = blue(c);
      float brightness = (r+g+b);
      float offset = map(brightness, 0, 255, 20, 0);

      stroke(map(mouseX, 0, 330, 0, 100));
      rect(j, i+offset, 2, 1);
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