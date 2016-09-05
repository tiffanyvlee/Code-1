//triangle, quad, line 2d primitive practice
  //1 small right isosceles triangle at each corner with hypotenuse facing towards center (4 triangles total)
  //1 trapezoid in between every triangles at corners (4 trapezoids total)
  //1 large up-side-down isosceles triangle with a smaller scale triangle center stacked on top of it at the top half of the page, hypotenuse facing top of the page (2 triangles total)
  //1 large right-side-up isosceles triangle with a smaller scale triangle center stacked on top of it at the bottom half of the page, hypotenuse facing bottom of the page (2 triangles total)
  //6 vertical lines gradually getting shorter as it nears the center, spread equidistantly in empty triangle-like space left on the right side of page. mirror on the left side of page (12 lines total)

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
  
  //upside-down triangles
    triangle(20, 60,  200, 190, 380, 60);
    triangle(80, 80, 200, 165, 320, 80);
    
  //right-side-up triangles
    triangle(20, 340, 200, 210, 380, 340);
    triangle(80, 320, 200, 235, 320, 320);
  
  //right vertical  lines
    line(20, 80, 20, 320);
    line(40, 100, 40, 300);
    line(60, 120, 60, 280);
    line(80, 140, 80, 260);
    line(100, 160, 100, 240);
    line(120, 180, 120, 220);
    
  //left vertical lines
    line(380, 80, 380, 320);
    line(360, 100, 360, 300);
    line(340, 120, 340, 280);
    line(320, 140, 320, 260);
    line(300, 160, 300, 240);
    line(280, 180, 280, 220);
  
  
}
