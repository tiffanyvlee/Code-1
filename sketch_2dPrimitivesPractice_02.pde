//cartoon face and background made of 2d primitives


void setup() {
  size(800, 800);
  background(200, 150, 150);
  
  }


void draw() {
  
  //lines in back
    line(400, 0, 400, 800);
    line(0, 400, 800, 400);
    line(0, 0, 800, 800);
    line(800, 0, 0, 800);

  //dots
    //outer circles
    fill(200, 0, 70);
      //4 count circles
        ellipse(100, 400, 50, 50);
        ellipse(400, 100, 50, 50);
        ellipse(700, 400, 50, 50);
        ellipse(100, 275, 25, 25);
      //8 count circles
        ellipse(275, 100, 25, 25);
        ellipse(525, 100, 25, 25);
        ellipse(700, 275, 25, 25);
        ellipse(700, 525, 25, 25);
        ellipse(525, 700, 25, 25);
        ellipse(275, 700, 25, 25);
        ellipse(100, 525, 25, 25);
        ellipse(400, 700, 50, 50);
    //inner circles
    fill(200, 100, 100);
      //4 count cirlces
        ellipse(85, 400, 10, 10);
        ellipse(400, 85, 10, 10);
        ellipse(715, 400, 10, 10);
        ellipse(400, 715, 10, 10);
      //8 count circles
        ellipse(100, 275, 20, 20);
        ellipse(275, 100, 20, 20);  
        ellipse(525, 100, 20, 20);
        ellipse(700, 275, 20, 20);
        ellipse(700, 525, 20, 20);
        ellipse(525, 700, 20, 20);
        ellipse(275, 700, 20, 20);
        ellipse(100, 525, 20, 20);
  
 //sparkles
    //larger sparkles
    fill(200, 0, 70);
      rect(80, 80, 30, 30, -20);
      rect(690, 80, 30, 30, -20);
      rect(690, 690, 30, 30, -20);
      rect(80, 690, 30, 30, -20);
    //smaller sparkles
    fill(200, 100, 100);
      rect(90, 90, 20, 20, -20);
      rect(690, 90, 20, 20, -20);
      rect(690, 690, 20, 20, -20);
      rect(90, 690, 20, 20, -20);
  
  //outer circle around face
  fill(0, 0, 0);
    ellipse(400, 400, 570, 570);

  //ears
    //outer ear
      fill(200, 100, 100);
      ellipse(220, 220, 120, 200);
      ellipse(580, 220, 120, 200);
    //inner ear
      fill(200, 0, 70);
      ellipse(215, 220, 100, 180);
      ellipse(585, 220, 100, 180);

  //face 
  fill(200, 100, 100);
    ellipse(400, 400, 530, 530);
    fill(0, 0, 0);
    ellipse(400, 400, 515, 515);
    fill(200, 100, 100);
    ellipse(400, 400, 512, 512);
  
  //eyes
    //eye shape
    fill(255, 255, 255);
      rect(250, 250, 50, 150, 100, 100, 0, 0);
      rect(500, 250, 50, 150, 100, 100, 0, 0);
    //eye pupil
    fill(100, 150, 220);
      rect(250, 300, 40, 100, 100, 100, 0, 0);
      rect(500, 300, 40, 100, 100, 100, 0, 0);
    //eye twinkle
      rect(280, 320, 5, 5, -5);
      rect(280, 325, 5, 5, -5);
      rect(280, 330, 5, 5, -5);
      rect(530, 320, 5, 5, -5);
      rect(530, 325, 5, 5, -5);
      rect(530, 330, 5, 5, -5);
    //eye wrinkle
      line(225, 400, 245, 400);
      line(225, 390, 245, 390);
      line(555, 390, 575, 390); 
      line(555, 400, 575, 400);
    //eye running mascara
    fill(0, 0, 0);
      rect(250, 400, 5, 50, 0, 0, 100, 100);
      rect(255, 400, 15, 25, 0, 0, 100, 100);
      rect(270, 400, 10, 80, 0, 0, 100, 100);
      rect(280, 400, 15, 40, 0, 0, 100, 100);
      rect(295, 400, 5, 60, 0, 0, 100, 100);
      rect(500, 400, 15, 30, 0, 0, 100, 100);
      rect(515, 400, 7, 89, 0, 0, 100, 100);
      rect(522, 400, 10, 60, 0, 0, 100, 100);
      rect(532, 400, 12, 20, 0, 0, 100, 100);
      rect(544, 400, 6, 40, 0, 0, 100, 100);
    
    //mouth
    fill(0, 0, 0);
      rect(300, 515, 200, 45, 10, 10, 500, 500);
      arc(400, 540, 200, 90, 0, PI);
      //teeth
      fill(255, 255, 255);
        arc(315, 520, 20, 30, 0, PI, CHORD);
        arc(336, 520, 20, 30, 0, PI, CHORD);
        arc(357, 520, 20, 30, 0, PI, CHORD);
        arc(378, 520, 20, 30, 0, PI, CHORD);
        arc(399, 520, 20, 30, 0, PI, CHORD);
        arc(420, 520, 20, 30, 0, PI, CHORD);
        arc(441, 520, 20, 30, 0, PI, CHORD);
        arc(462, 520, 20, 30, 0, PI, CHORD);
        arc(483, 520, 20, 30, 0, PI, CHORD);
      //tongue
      fill(200, 0, 70);
        ellipse(400, 565, 120, 30);
    
  }
  
 