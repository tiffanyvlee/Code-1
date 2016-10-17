float[] xPosArr = new float[20];
float [] yPosArr = new float[20];
float siz;  
 
void setup() {
  size(600,600);
   background(255);
  noStroke();
  
  for (int i = 0; i < xPosArr.length; i++) {
    for (int j = 0; j < yPosArr.length; j++) {
    xPosArr[i] =  i * 10;
    yPosArr[j] =  j * 50;
    }
  }
}

void draw() {
 
  
  for (int i = 0; i < xPosArr.length; i++) {
    for (int j = 0; j < yPosArr.length; j++) {
    xPosArr[i] += random(-i,i);
    yPosArr[j] += random(-j, j);
    fill(map(xPosArr[i], yPosArr[j], width, 0, 0), map(xPosArr[i], yPosArr[j], width, 0, 100), map(xPosArr[i], yPosArr[j], width, 0, 255));

    siz = (map(xPosArr[i], 50, 0, 1, 5));
    ellipse(xPosArr[i], yPosArr[j], siz, siz);
    }
  }
}