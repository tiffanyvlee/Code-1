PImage img;

void setup() {
  size(660, 990);
  img = loadImage("portrait.jpg");
  //noSmooth();
  stroke(255);
}

void draw() {
  background(255);
  
  
  int widthStep = 4;
  int heightStep = 5;
  
    for (int i = 0; i <= height; i += heightStep) {
    for (int j = 0; j <= width; j += widthStep) {
      
      color c = img.get(int(j + (sin(radians(frameCount+i+j))*20)), i);
      
      float r = red(c);
      float g = green(c);
      float b = blue(c);

      float brightness = (r+g+b);

      float offset = map(brightness, 0, 255, 20, 0);

      //fill(map(0, width, height, 0, 255), map(0, width, height, 0, 255), 0);
      stroke(map(mouseX, 0, 330, 150, 255), map(mouseX, 330, 660, 0, 255), map(mouseX, 660, 990, 0, 150));
      rect(j, i+offset, 6, 2);
    }
  }
}