PImage kendrick;

void setup() {
  size(500, 500);
  kendrick = loadImage("kendrick.png");  
}

void draw() {
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
}