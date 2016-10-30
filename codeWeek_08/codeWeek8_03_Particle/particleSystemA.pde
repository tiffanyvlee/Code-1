
ArrayList<ParticleSystem> systems = new ArrayList<ParticleSystem>();
PImage pipe;

void setup() {
  size(800, 500);
    pipe = loadImage("pipe.png");
     imageMode(CENTER);
}

void draw() {
    background(245, 235, 200);
  image(pipe, width/2, 300);
  
  for (int i = 0; i < systems.size(); i++) {
    ParticleSystem t = systems.get(i);
    t.update();

    
  }
} 

void mousePressed() {
  systems.add(new ParticleSystem(mouseX,mouseY));
}