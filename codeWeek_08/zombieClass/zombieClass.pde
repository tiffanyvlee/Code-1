// create a single Ball object
ArrayList<Zombie> zombies = new ArrayList<Zombie>();

void setup() {
size(600, 600);
}

void draw() {
 
  background(255);
  for (int i = 0; i < zombies.size(); i++) {
    Zombie b = zombies.get(i);
    b.update();
    b.display();
  }
}

void mousePressed() {
  //when the mouse is pressed, add a new instance of a Ball object to the ArrayList
  zombies.add(new Zombie(mouseX,mouseY));
}