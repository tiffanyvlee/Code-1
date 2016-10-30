

class Zombie {
  float x;  
  float y;  
  float dx;  
  float dy;  
  PImage zombster;


  Zombie(float _x, float _y) {
    x  = _x;
    y = _y;
    dx = random(-5, 5);  
    dy = random(-5, 5);

    zombster = loadImage("zombster.png");
  }


  void display() {
    imageMode(CENTER);
    image(zombster, x, y, mouseX/2, mouseY/2);
  }


  void update() {
    
    if (x < 0 || x > width) {
      dx *= -1;
      x += dx;
    } else {
      x += dx;
    } 
    
    if (y < 0 || y > height) {
      dy *= -1;
      y += dy;
    } else { 
      y += dy;
    }
  }
}