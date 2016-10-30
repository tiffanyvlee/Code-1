import processing.pdf.*;

PImage kendrick;


void setup() {
  size(500, 500);
  kendrick = loadImage("kendrick.png");
  noStroke();
  background(0);
  
  frameRate(24);
}


void draw() { 
  color c = kendrick.get(mouseX,mouseY);
  
  fill(c);
  rect(mouseX,mouseY,50,50);
 }


void mousePressed(){
  beginRecord(PDF, "Lines.pdf");
  background(255);
}


void mouseReleased() {
  endRecord();
  background(255);
}