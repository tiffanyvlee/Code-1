
ArrayList<ParticleSystem> systems = new ArrayList<ParticleSystem>();

void setup() {
  size(800, 800);
 
}

void draw() {
  background(150, 225, 100);
  
  for (int i = 0; i < systems.size(); i++) {
    ParticleSystem t = systems.get(i);
    t.update();
  }
} 

void mousePressed() {
  systems.add(new ParticleSystem(mouseX,mouseY));
}