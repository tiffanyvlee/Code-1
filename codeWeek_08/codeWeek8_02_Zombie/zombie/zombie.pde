

class Zombie {
  float x;   //x position
  float y;   //y position
  float dx;  //x velocity
  float dy;  //y velocity
  float s;
  PImage zombster;
  
  //think of the constructor function as the setup() for the object instance.
  //notice there is no "void" or return type. Technically it returns itself (a Ball)
  //this constructor takes no arguments - it sets all fields automatically.
  Zombie(float _x, float _y) {
    x  = _x;
    y = _y;
    dx = random(-5, 5);  //set a random velocity
    dy = random(-5, 5);
    //s = random(25, 125);
    zombster = loadImage("zombster.png");
  }

  // call this method to display the ball
  void display() {
    image(zombster, x, y,mouseX/2, mouseY/2);
  }

  // call this method to update the ball's position
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