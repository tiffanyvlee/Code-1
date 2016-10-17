int[] ellipseYPos = new int[12];

void setup() {
  size(1000, 600);

  for (int i = 0; i < ellipseYPos.length; i++) {
    ellipseYPos[i] = 0;
  }
}

void draw() {
  fill(250,7);
  noStroke();
  rect(0,0,width,height);
  
  stroke(0);
  drawSpheres();
  translate(-50, 300);
  drawSpheres();
  
}

void drawSpheres(){
  noStroke();
for (int i = 0; i < ellipseYPos.length; i++) {
    fill(map(0, i, ellipseYPos.length, 200, 255), map(0, i, ellipseYPos.length, 0, 255), map(0, i, ellipseYPos.length, 255, 100));
    ellipse(i * 100, ellipseYPos[i], 50, 50);
  }

  for (int i = 0; i < ellipseYPos.length; i++) {
    if (ellipseYPos[i] < height) {
      ellipseYPos[i] += i;
    } else {
      ellipseYPos[i] = 0;
    }
  }
}