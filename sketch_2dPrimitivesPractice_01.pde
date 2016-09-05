  //draw: 
    //create border with 8 squares stacked equadistantly, tl corners rounded 1 pi (looks indented inwards), br corners rounded   
    //9x9 strips/rectangles woven perpendicularly and spaced equidistantly, centered in the middle of the page within the border
    //one large circle behind the woven rectangles and one small circle with a smaller circle stacked above it on top of the woven rectangles at center


void setup(){
size(400, 400);
background(255, 255, 255);
}


void draw(){
  
  //stacked rectangles with bottom right corners rounded
  rect(10, 10, 380, 380, 0, 0, 30, 0);
  rect(20, 20, 360, 360, 0, 0, 30, 0);
  rect(30, 30, 340, 340, 0, 0, 30, 0);
  rect(40, 40, 320, 320, 0, 0, 30, 0);
  rect(50, 50, 300, 300, 0, 0, 30, 0);
  rect(60, 60, 280, 280, 0, 0, 30, 0);
  rect(70, 70, 260, 260, 0, 0, 30, 0);
  rect(80, 80, 240, 240, 0, 0, 30, 0);
  
    //arcs to indent top left corners of rectangles
    arc(80, 80, 50, 50, 0, HALF_PI);
    arc(70, 70, 50, 50, 0, HALF_PI);
    arc(60, 60, 50, 50, 0, HALF_PI);
    arc(50, 50, 50, 50, 0, HALF_PI);
    arc(40, 40, 50, 50, 0, HALF_PI);
    arc(30, 30, 50, 50, 0, HALF_PI);
    arc(20, 20, 50, 50, 0, HALF_PI);
    arc(10, 10, 50, 50, 0, HALF_PI);
  
  //large ellipse at center
  ellipse(200, 200, 220, 220);

  //woven strips at center
  rect(100, 120, 200, 10);
  rect(115, 100, 10, 200);
  rect(100, 140, 200, 10);
  rect(135, 100, 10, 200);
  rect(100, 160, 200, 10);
  rect(155, 100, 10, 200);
  rect(100, 180, 200, 10);
  rect(175, 100, 10, 200);
  rect(100, 200, 200, 10);
  rect(195, 100, 10, 200);
  rect(100, 220, 200, 10);
  rect(215, 100, 10, 200);
  rect(100, 240, 200, 10);
  rect(235, 100, 10, 200);
  rect(100, 260, 200, 10);
  rect(255, 100, 10, 200);
  rect(100, 280, 200, 10);
  rect(275, 100, 10, 200);
  
  //stacked ellipses at center
  ellipse(200, 200, 60, 60);
  ellipse(200, 200, 40, 40);

}