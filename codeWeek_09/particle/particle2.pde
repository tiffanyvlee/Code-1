class Particle2 {
  float x, y;
  float s;
  float lifetime;
  float xDir, yDir;
  PVector pos1, pos2;
  PVector vel1, vel2;
  PVector acc1, acc2;


  Particle2(float x, float y) {
    pos1 = new PVector(x, y);
    vel1 = PVector.random2D();
    vel1.setMag(12);
    acc1 = new PVector(-0.05, 0.5);
    
    pos2 = new PVector(x, y);
    vel2 = PVector.random2D();
    vel2.setMag(12);
    acc2 = new PVector(0.05, -0.5);
    
    s = 10;
    lifetime = 120;
  }
  
  void update() {
    lifetime--;
    pos1 = pos1.add(vel1);
    vel1 = vel1.add(acc1);
    
    pos2 = pos2.add(vel2);
    vel2 = vel2.add(acc2); 
  
    s = map(mouseY, 0, height, 2, 15);
  }
    
    
  void display() {
    fill(map(mouseX, width, 0, 255, 50), 100, 100);
    ellipse(pos1.x, pos1.y, s, s);
    ellipse(pos2.x, pos2.y, s, s);
  }
}