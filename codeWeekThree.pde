/*
Functions with return values: lines 54-84

  1. round()
        -calculates and returns an integer closest to the float parameter 
        
  2. sqrt()
        -calculates and returns the square root of the float

  3. year()
        -returns the integer of the current year according to the clock on your computer 
 
  4. max()
        -returns the largest value in a sequence of numbers

  5. degrees()
        -converts and returns the value of inputted radian measurement into degrees
        
        
Functions with only side effects, no returns: lines 88-128

  1. noStroke()
        noStroke()
        -disables outlines 
  
  2. textSize()
        textSize(size)
        -sets font size
        -applies to all subsequent calls to the text function
   
  3.  curve()
        curve(x1, y1, x2, y2, x3, y3, x4, y4) 
        -draws a curve line on screen
        -First two parameters specify the beginning control point, middle four specify start and stop of the curve, last two specify ending control point
      
  4. rotate()
        rotate(angle)
        -rotates according to the angle parameter specified in radians (0 to TWO_PI)
        -positive numbers rotate clockwise, negative numbers rotate counterclockwise
        -applies to all subsequent calls
 
  5.  mousePressed()
        mousePressed(event)
        -called once after every time mouse button is pressed
        -mouseButton variable can determine which button has been pressed
        -needs draw() function to run multiple times
        
*/



void setup() {
  
//Fuctions with return values

  //1. round() function
    float x = 2.25;
    int roundResult = round(x);
    println(roundResult);
  
  
  //2. sqrt() function
    float squareRootResult= sqrt(16);
    println(squareRootResult);
  
  
  //3. year() function
    int yearResult = year();
    println(yearResult);
  
  
  //4. max() function
    float maxResult1 = max(1, -2.5, 4);
    println(maxResult1);
  
    float[] values = {-2, 4.3, -12.2, 10};
    float maxResult2 = max(values);
    println(maxResult2);
  
  
  //5. degrees() function
    float radians = PI/2;
    float degreesResult = degrees(radians);
    println(radians + " radians is " + degreesResult + " degrees ");


  
//Functions with only side effects

  //1. noStroke() function  
    noStroke();
    rectMode(CENTER);
    rect (width/2, height/2, 20, 20);
  
  
  //2. text() function
    textSize(16);
    text("heyo", 30, 10);

  
  //3.  
    noFill();
    stroke(0);
    curve(2, 10, 60, 30, 70, 20, 20, 30); 
  
  
  //4. rotate() function
    noFill();
    rotate(PI/3.0);
    rect(20, -5, 10, 10);

}


  //5. mousePressed() function
    int value = 150;

void draw() {
    fill(value);
    ellipse(25, 50, 20, 20);
}

void mousePressed() {
    if (value == 150) {
    value = 100;
    } else {
    value = 150;
    }
}