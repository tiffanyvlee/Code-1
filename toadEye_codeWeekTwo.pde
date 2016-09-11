float rotAngle = 45;
int w = 60;
int h = 60;
int f = 400;

void setup() {
  size(800,800);
} 

void draw() {
  drawFlower(400, 400);
  
  noFill();
  ellipseMode(CENTER);
  ellipse(f, f, f, f);
  ellipse(f, f, f-20, f-20);
  ellipse(f, f, f-15, f-15);
 
  
 ellipse(f, f, f+200, f);
 ellipse(f, f-10, f+200, f+50);
 arc(f, f+25, f+f/2, f, 0, PI);
 arc(f, f+50, f+200, f, 0, PI);

  
}

void drawFlower(int x, int y){
pushMatrix(); // remembers the translation / rotation beneath it.
  fill(0, 240, 240);
  translate(width/2, height/2);
  rotate(radians(rotAngle/2));
  ellipseMode(CORNER);
  ellipse(0,0,w,h);
  rotAngle+=1; 

  pushMatrix();
  fill(0, 225, 225);
  translate(120, 0);
  rotate(radians(rotAngle*6));
  ellipse(0, 0, w/2, h/2);

  
  pushMatrix();
  fill(0, 200, 200);
  translate(60, 0);
  rotate(radians(rotAngle));
  ellipse(0, 0, w/25, h/25);
  
  
  popMatrix();
  popMatrix();
  popMatrix();
  
  
  
}