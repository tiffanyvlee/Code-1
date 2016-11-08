class Particle1 {
  float x, y;
  float s;
  float a; 
  float lifetime;
  float xDir, yDir;
  float oscSize;
  float oscCount;
  float amplitude;
  float startingSize;
  
  Particle1(float _x, float _y) {
    x = _x;
    y = _y;
    s = 10;
    a = 40;
    lifetime = 100;
    xDir = random(-2,2);
    yDir = random(-2,2);
    oscCount = 0;
    amplitude = 60;
    startingSize = 10;
  }
  
  
  void update() {
    lifetime--;
    y-=yDir*2;
    x+=xDir*2;
    oscCount += 0.1;
    oscSize = startingSize + sin(oscCount) * amplitude;   

    s = map(mouseY, 0, width, 60, 10);
    
    if (a > 0) {
      a-=0.5;
    }
  }
  
  
  void display() {
    fill(map(mouseX, width, 0, 0, 255), 100, 100);
    ellipse(x, y, oscSize, oscSize);
  }
}