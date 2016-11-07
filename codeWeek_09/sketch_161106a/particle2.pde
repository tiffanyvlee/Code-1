class Particle2 {
  float x, y;
  float s;
  float a;
  float lifetime;
  float xDir, yDir;
  PImage sock;
  
  Particle2(float _x, float _y) {
    x = _x;
    y = _y;
  s=10;
    a = 40;
    lifetime = 100;
    xDir = random(-2,2);
    yDir = random(0,2);
    
    tint(255, 150);
    imageMode(CENTER);
    sock = loadImage("sock1.png");
  }
  
  void update() {
    lifetime--;
    y-=yDir*2;
    x+=xDir*2;
    

    s = map(mouseY, 0, height, 10, 100);
    
    if (a > 0) {
      a-=0.5;
    }

    // change the size somehow
  }
  
  void display() {
    fill(map(mouseX, width, 0, 100, 255), 100, 100);

    ellipse(x, y, s, s);


  }
}