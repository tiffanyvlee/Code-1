float rotAngle = 45;
int w = 40;
int h = 60;
int f = 240;


void setup() {
  size(1200,800);
  background(0, 100, 125);
    
  drawEyesStill(0, 0);
  drawEyesStill(718, 0);
}

 
void draw() {
  //pupil design
  noFill();
  drawPupilDesign(0, 0);
  
  //mouth
  ellipseMode(CENTER);
  fill(100, 0, 0);
  ellipse(600, 650, 210, 180);
  fill(0);
  ellipse(600, 650, 150, 130);
  //beauty marks
  ellipse(450, 650, 10, 10);
  ellipse(750, 650, 10, 10);
}


void drawEyesStill(int x, int y){
   translate(x,y);
  
  //outer wrinkles
   fill(0, 50, 70);
  arc(f, f, f+3*h, f+4*h, 0, PI);
  fill(0, 100, 120);
  arc(f, f, f+3*h, f+3*h, 0, PI);
 
  //eyeball
  fill(0, 20, 90);
  ellipse(f, f, f+4*w+10, f+4*w);
  fill(255);
  ellipse(f, f, f+4*w, f+h);
  
  //pupil
  fill(0);
  ellipse(f, f, f+h, f+h);
  fill(0, 100, 150);
  ellipse(f, f, f+w+10, f+w+10);
  
  //pupil inner ring 
  ellipse(f, f, f+w-10, f+w-10);  
}



void drawPupilDesign(int x, int y){
  translate(0,0);
  
  //left eye
  pushMatrix(); 
  fill(0, 240, 240);
  translate(240, 240);
  rotate(radians(rotAngle/2));
  ellipseMode(CORNER);
  drawCircle(0,0,w);
  rotAngle+=1; 

    pushMatrix();  
    fill(0, 225, 225);
    translate(2*w, 0);
    rotate(radians(rotAngle*6));
    drawCircle(0, 0, w/2);
  
      pushMatrix();
      fill(255, 200, 200);
      translate(w, 0);
      rotate(radians(rotAngle));
      drawCircle(0, 0, w/20);
  
      popMatrix();
      
    popMatrix();

  popMatrix();

  //right eye
   pushMatrix(); 
   ellipseMode(CORNER);
   fill(0, 240, 240);
   translate(960, 240);
   rotate(radians(-rotAngle/2));
   drawCircle(0,0,w);
   rotAngle+=1; 

     pushMatrix();  
     fill(0, 225, 225);
     translate(2*w, 0);
     rotate(radians(-rotAngle*6));
     drawCircle(0, 0, w/2);
  
       pushMatrix();
       fill(255, 200, 200);
       translate(w, 0);
       rotate(radians(-rotAngle));
       drawCircle(0, 0, w/20);
  
       popMatrix();
      
     popMatrix();

   popMatrix();
}



void drawCircle(int x, int y, int siz) {
 
  ellipse(x, y, siz, siz);
}