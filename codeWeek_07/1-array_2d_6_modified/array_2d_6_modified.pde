int COLS_NUM = 10;
int ROWS_NUM = 10;

float[][] posx = new float[COLS_NUM][ROWS_NUM];
float[][] posy = new float[COLS_NUM][ROWS_NUM];

float[][] velx = new float[COLS_NUM][ROWS_NUM];
float[][] vely = new float[COLS_NUM][ROWS_NUM];

void setup() {
  size(600, 600);

  float xStepAmount = (width-200)/(posx.length - 1);
  float yStepAmount = (height - 200)/(posx[0].length - 1);

  for (int i = 0; i < posx.length; i++) {
    for (int j = 0; j < posx[0].length; j++) {
      posx[i][j] = 100 + i * xStepAmount;
      posy[i][j] = 100 + j * yStepAmount;
      velx[i][j] = random(-0.5,0.5);
      vely[i][j] = random(-0.5,0.5);
    }
  }

  noCursor();
  noStroke();
  
  background(100, 150, 100);
   
}

void draw() {


  for (int i = 0; i < posx.length; i++) {
    for (int j = 0; j < posx[0].length; j++) {
      fill(0, random(50, 150), 0);    
      ellipse(posx[i][j], posy[i][j], 10, 10);
      
      if (posx[i][j] < 0 || posx[i][j] > width) {
        velx[i][j] *= -1;
        posx[i][j] += velx[i][j];
      } else {
        posx[i][j] += velx[i][j];
      }
      
      if (posy[i][j] < 0 || posy[i][j] > height) {
        vely[i][j] *= -1;
        posy[i][j] += vely[i][j];
      } else {
        posy[i][j] += vely[i][j];
      }
    }
  }
}