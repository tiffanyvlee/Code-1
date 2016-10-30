class Particle {
  float x; 
  float y;
  float dx;
  float dy;
  color c;
  float s;
  float t;
  float life;
  PImage smoke;
  float r;

  //constructor
  Particle(float _x, float _y) {
    x = _x;
    y = _y;
    dx = random(0, 200);
    dy = random(0, 200);
    s = random(50, 120);
    t = random(50, 120);
    r = random (10, 100);
    life = 5;
    smoke = loadImage("smoke.png");
  }


  void display() {
         image(smoke, s, t);
  }

  void update() {
    life--;
       s = map(life,10, 250, 210, 250);
    
    if (x < s/2 || x > width-s/2) {
      dx *= -1;
      x += dx;
    } else {
      x += dx;
    } 
    
    if (y < s/2 || y > height-s/2) {
      dy *= -1;
      y += dy;
    } else { 
      y += dy;
    }
  }
  
  void setSize(float siz) {
    s = siz;

  }
  
  
}