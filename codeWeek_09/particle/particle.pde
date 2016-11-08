ArrayList<Particle1> smoke1 = new ArrayList<Particle1>();
ArrayList<Particle2> smoke2 = new ArrayList<Particle2>();
int spawnRate = 5;
int x, y;
float rot;


void setup() {
  size(800,800);
  background(150, 200, 200);
  rectMode(CENTER);
}


void draw() {
  spawnRate = (int)random(1,5);

  if (frameCount % spawnRate == 0) {
    Particle1 p = new Particle1(width/2, height/2);
    smoke1.add(p);
  }

  for (int i = smoke1.size()-1; i >= 0; i--) {
    Particle1 temp = smoke1.get(i);
    temp.update();
    temp.display();
    
    if (temp.lifetime < 0) {
      smoke1.remove(i);
    }
  }
  
  
  if (frameCount % spawnRate == 0) {
    Particle2 p2 = new Particle2(width/2, height/2);
    smoke2.add(p2);
  }

  for (int j = smoke2.size()-1; j >= 0; j--) {
    Particle2 temp = smoke2.get(j);
    temp.update();
    temp.display();
    
    if (temp.lifetime < 0) {
      smoke2.remove(j);
    }
  }
  
  
  drawFace(width/2, height/2); 
  drawOuterRing(width/2, height/2);
}


void drawFace(int x, int y){
  fill(map(mouseX, 0, width, 100, 200), map(mouseX, 0, width, 150, 200), map(mouseX, 0, width, 150, 200));
  ellipse(x, y, 200, 200);
  
  fill(map(mouseX, width, 0, 50, 255), 100, 100); 
  ellipse(x + 50, y - 20, 10, 60);
  ellipse(x - 50, y - 20, 10, 60);

  rect(width/2, height/2 + 60, 50, 20, 0, 0, 20, 20);
    
  fill(random(190, 255));
  ellipse(x + 50, y - 20, 5, 20);
  ellipse(x - 50, y - 20, 5, 20);  
}


void drawOuterRing(int x, int y){
  rot +=0.5;
  
  pushMatrix();
    translate(x, y);
    rotate(rot);
    fill(map(mouseX, 0, width, 100, 200), map(mouseX, 0, width, 150, 200), map(mouseX, 0, width, 150, 200));
    rect(325, 325, 270, 10);
  popMatrix();
}