//PImage img;

void setup() {

 // size(200,133);
 // img = loadImage("Cover-Image.jpg");
  
  
  String h = "hello!";
  println(h);

  String s = "string";
  if (s.equals("string")) {
    println("s equals string");
  }
  
  
  int resultA = addTwo(10);
    println("the result of calling addTwo(10) is " + resultA);

  int resultB = subtractTwenty(25);
    println("the result of calling subract20(25) is " + resultB);

  float resultC = addTwoFloats(1.2, 2.2);
    print("last result - addTwoFloats(1.2, 2.2) is " + resultC);
    println(resultB);

  int resultD = multiplyFour(6);
    println("the result of calling multiplyFour(6) is " + resultD);

  int resultE = divideFive(20);
    println("the result of calling divide5(20) is " + resultE);
  
}

void draw() {
 
  //image(img, 0, 0);
}

int addTwo(int x) {
  return x+2;
}

int subtractTwenty(int x) {
  return x-20;
}

float addTwoFloats(float x, float y) {
  return x + y;
}

int multiplyFour(int x) {
  return x * 4;
}

int divideFive(int x) {
  return x / 5;
}



color doubleBrightness(color c) {
  c = c * 2;
  return c; 
}