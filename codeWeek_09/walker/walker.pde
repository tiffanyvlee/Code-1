ArrayList<Walker1> walker1List = new ArrayList<Walker1>();
ArrayList<Walker2> walker2List = new ArrayList<Walker2>();

PImage img;

void setup() {
  size(1000, 800);
  background(0);
  noStroke();
}

void draw() {
  for (Walker1 walker1 : walker1List) {
    walker1.move();
    walker1.display();
  }
  for (Walker2 walker2 : walker2List) {
    walker2.move();
    walker2.display();
  }
}

void mousePressed() {
  if (mouseX > 300 && mouseX < 700 && mouseY > 200 && mouseY < 600) {
  walker1List.add(new Walker1(width/2, height/2));
  } else {
  walker2List.add(new Walker2(mouseX, mouseY));
  }
}