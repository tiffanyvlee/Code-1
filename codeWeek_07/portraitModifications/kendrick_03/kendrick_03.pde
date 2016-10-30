PImage kendrick;

void setup() {
  size(500, 500);
  kendrick = loadImage("kendrick.png");
  noStroke();
  background(0);
}

void draw() {
  color c = kendrick.get(mouseX,mouseY);
  
  fill(c);
  rect(mouseX,mouseY,50,50);
}