class Particle {
  float x, y;
  float s;
  float a; // alpha
  float lifetime;
  float xDir, yDir;
  PImage sock;
  
  Particle(float _x, float _y) {
    x = _x;
    y = _y;
  s=10;
    a = 40;
    lifetime = 100;
    xDir = random(-2,2);
    yDir = random(-2,0);

  }
  
  void update() {
    lifetime--;
    y-=yDir*2;
    x+=xDir*2;
    

    s = map(mouseY, 0, width, 100, 10);
    
    if (a > 0) {
      a-=0.5;
    }

    // change the size somehow
  }
  
  void display() {

    ellipse(x, y, s, s);

  }
}