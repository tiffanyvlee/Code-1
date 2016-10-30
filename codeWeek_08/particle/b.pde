class Particle {
  float x; 
  float y;
  float dx;
  float dy;
  color c;
  float s;
  float t;
  float life;

  //constructor
  Particle(float _x, float _y) {
    x = _x;
    y = _y;
    dx = random(-3, 3);
    dy = random(-3, 3);
    c = color(0, random(50, 100), random(200, 255));
    s = random(1, 5);
    t = random(6, 10);
    println("created a ball!");
    life = 15;
  }

  void display() {
    noStroke();
    fill(c);
    ellipse(x, y, s, t);
  }

  void update() {
    life--;
    s = map(life, 60, 0, 50, 0);
    
    //c = color(map(dist(mouseX,mouseY,x,y),0,100,255,0));
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