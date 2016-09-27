//have two patterns that intersect each other 
//create one pattern with an ellipse going diagonally 
//have another pattern being drawn simultaniously with with rectangles added on horizontally 
   //allow the size of the horizontal pattern to be controlled by mouse position


//ellipse floats
float x;
float y;

float dx;
float dy;


//rectangle floats
float m;
float n;

float dm;
float dn;


void setup() {
  
  size (600, 600);
  background (100, 0, 100);

//ellipse
  x = width/2;
  y = height/2;
  
  dx = 2;         
  dy = 7;
 
 
//rectangle
  m = 0;
  n = 0;
  
  dm = 4;         
  dn = 5;
  
  
  noFill();
  noStroke();
  
}



void draw() {
  
//ellipse
  ellipse(x, y, 30, 30);

    x += dx;
    y +=dy;
  
    if ( x > width || x < 1200 ) {
      x -= dx;
      dx = -dx;
    }
  
    if ( y > height || y < 0 ) {
      y -= dy;
      dy = -dy;
    }
    
  float r = map(m, 0, width, 0, 150);
  float g = 0;
  float b = map(n, 0, height, 100, 150);
  
    fill(r, g, b);
    x+=5;            
 
    b = x + y;      
    b= map(b, 0, 1200, 0, 255);
 
   if ( x > width ) {
     x = 0;
     y += 10;
   }
 
   if ( y > height ) {
     y = 0;
     x = 0;  
   }  
  
//rectangle  
  rect(m, n, 4, mouseY);

  float v = 0;
  float a = map(x, 0, width, 200, 0);
  float c = map(y, 0, height, 200, 100);
  
   fill(a, v, c);
   m+=7;    

   if ( m > width ) {
     m = 0;
     n += 100;
   }
 
   if ( n > height ) {
     m = 0;
     n = 0;  
   }  


}
