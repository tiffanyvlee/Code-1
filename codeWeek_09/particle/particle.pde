ArrayList<Particle> smoke = new ArrayList<Particle>();
ArrayList<Particle2> smoke2 = new ArrayList<Particle2>();
int spawnRate = 3;

void setup() {
  size(800,800);
  //noStroke();
  background(100, 50, 50);
  rectMode(CENTER);
}

void draw() {

  spawnRate = (int)random(1,5);

  if (frameCount % spawnRate == 0) {
    Particle p = new Particle(width/2, height/2);
    smoke.add(p);
  }

  for (int i = smoke.size()-1; i >= 0; i--) {
    Particle temp = smoke.get(i);
    temp.update();
    temp.display();
    
    if (temp.lifetime < 0) {
      smoke.remove(i);
    }
  }
  
  if (frameCount % spawnRate == 0) {
    Particle2 p2 = new Particle2(width/2, height/2);
    smoke2.add(p2);
  }

  for (int j = smoke.size()-1; j >= 0; j--) {
    Particle2 temp = smoke2.get(j);
    temp.update();
    temp.display();
    
    if (temp.lifetime < 0) {
      smoke2.remove(j);
    }
  }
  fill(map(mouseX, width, 0, 255, 100), 100, 100);
  ellipse(width/2, height/2, 200, 200);
  fill(map(mouseX, width, 0, 100, 255), 100, 100); 
  ellipse(width/2 + 50, height/2 - 30, 20, 20);
  ellipse(width/2 - 50, height/2 - 30, 20, 20);
  rect(width/2, height/2 + 50, 50, 20, 10);
  
}