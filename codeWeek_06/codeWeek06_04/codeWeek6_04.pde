int NUMBALLS = 120;

float[] ballX = new float[NUMBALLS];
float[] ballY = new float[NUMBALLS];
float[] dx = new float[NUMBALLS];
float[] dy = new float[NUMBALLS];

void setup() {
  size(800,800);
  
  noStroke();
  //textAlign(CENTER, CENTER);
  
  for (int i = 0; i < NUMBALLS; i++) {
    for (int j = 0; j <NUMBALLS; j++) {
    ballX[i] = width/2;
    ballY[i] = height/2;

    dx[i] = random(-0.5,0.5);
    dy[i] = random(-7,7);

    
    //ballX[i] = 0;
    //ballY[i] = map(i,0,NUMBALLS,0,height);
    //dx[i] = map(i,0,NUMBALLS,0,5);
    //dy[i] = 0;
    }
  }
  
}

void draw() {
  background(50, 100, 50);
  
  for (int i = 0; i < NUMBALLS; i++) {
    fill(50, map(i,0,NUMBALLS,70,255), 50);
    ellipse(ballX[i], ballY[i], i+20, i+20);
    fill(map(i,0,NUMBALLS,255,100), 0, 0);
    //text(i, ballX[i], ballY[i]);
    float z = i/5;
    ellipse(ballX[i], ballY[i] + (i/3), i/3, z);
    ellipse(ballX[i] - (i/3), ballY[i] - z, z, z);
    ellipse(ballX[i] + (i/3), ballY[i] - z, z, z);
    ballX[i] += dx[i];
    ballY[i] += dy[i];
   
    

    
    if (ballX[i] > width-NUMBALLS/2 || ballX[i] < NUMBALLS/2) {
      ballX[i] -= dx[i];
      dx[i] = -dx[i];
    }
    
    if (ballY[i] > height-NUMBALLS/2 || ballY[i] < NUMBALLS/2) {
      ballY[i] -= dy[i];
      dy[i] = -dy[i];
    } 
   
  }
}