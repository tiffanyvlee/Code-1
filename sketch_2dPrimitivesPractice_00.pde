void setup(){
  size(400, 400);
  background(255, 255, 255);
  
}

void draw(){
  //corner triangles
    triangle(20, 20, 40, 20, 20, 40);
    triangle(360, 20, 380, 20, 380, 40);
    triangle(380, 360, 380, 380, 360, 380);
    triangle(20, 360, 40, 380, 20, 380);
  
  //border quads
    quad(60, 20, 340, 20, 360, 40, 40, 40);
    quad(40, 360, 360, 360, 340, 380, 60, 380);
  
  //upside down triangles
    triangle(20, 60,  200, 190, 380, 60);
    triangle(80, 80, 200, 165, 320, 80);
  //rightside up triangles
    triangle(20, 340, 200, 210, 380, 340);
    triangle(80, 320, 200, 235, 320, 320);
  
  
  //right side vertical  lines
    line(20, 80, 20, 320);
    line(40, 100, 40, 300);
    line(60, 120, 60, 280);
    line(80, 140, 80, 260);
    line(100, 160, 100, 240);
    line(120, 180, 120, 220);
  //left side vertical lines
    line(380, 80, 380, 320);
    line(360, 100, 360, 300);
    line(340, 120, 340, 280);
    line(320, 140, 320, 260);
    line(300, 160, 300, 240);
    line(280, 180, 280, 220);
  
  
}