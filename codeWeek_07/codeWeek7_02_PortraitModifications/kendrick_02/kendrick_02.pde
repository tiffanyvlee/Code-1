import processing.pdf.*;
boolean saveOneFrame = false;
PImage kendrick;


void setup() {
  size(500, 500);
  kendrick = loadImage("kendrick.png");
  noStroke();
  rectMode(CORNER);
  
  frameRate(24);
}


void draw() {
  if (saveOneFrame == true) {
    beginRecord(PDF, "frame=####.pdf");
  }
  
  background(255);
  
  int widthStep = 5;
  int heightStep = 10;
  
  for (int i = 0; i < width; i+=widthStep) {
    for (int j = 0; j < height; j+=heightStep) {
     
      color c = kendrick.get(i, j);
      float w = map(0,0,255,10,0);
      float h = map(0,0,255,10,0);
      
      pushMatrix();
        translate(i,j);
        fill(c);
        rotate(i+j+radians(frameCount));
        rect(0, 0, w, h);
      popMatrix();
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