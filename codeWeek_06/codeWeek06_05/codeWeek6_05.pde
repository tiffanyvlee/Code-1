PImage img;
PImage [] imgArray = new PImage [6];

void setup() {
  size(600, 600);
  
  for(int i = 0; i < imgArray.length; i++) {
    for(int j = 0; j < imgArray.length; j++) {
      img = loadImage("toast.gif");
      img.resize(100, 100);
      image(img, i*100, j*100 );
    }
  }
}