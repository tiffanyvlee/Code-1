class Faces {  
  
  Rectangle r; 
  boolean appear;
  boolean remove;
  int timer = 0;
  int id;
  
  float eyesLocX;
  float eyesLocX2;
  float eyesLocY;
  float eyesLocY2;
  float mouthLocX;
  float mouthLocY;
  
  float eyesSizeX;
  float eyesSizeY;
  float mouthSizeX;
  float mouthSizeY;

  Faces(int newID, int x, int y, int w, int h) {
    r = new Rectangle(x, y, w, h);
    appear = true;
    remove = false;
    id = newID;   
  }
  
  
  void display() {     
    rotPetals();
    strokeWeight(2);
    stroke(255, 200, 170);
    fill(240, 130, 120);
    rectMode(CORNER);
    rect((video.width - r.x - 4), (r.y), 8, 600);
    ellipseMode(CENTER);
    ellipse((video.width - r.x - 1),r.y, r.width, r.height);       

    rectMode(CENTER);         
    eyesLocY = r.y - r.y/4.2;
    eyesLocY2 = r.y - r.y/4.2;
    mouthLocX = r.x;
    
    if (r.x < 100){
      eyesLocX = min(r.x - r.x/4, r.x);
      eyesLocX2 = min(r.x + r.x/4, video.width - r.x + r.x);
    } else {
      eyesLocX = max(r.x - r.x/10, r.x - r.x/12);
      eyesLocX2 = max(r.x + r.x/12, r.x + r.x/12);
    }
    if (r.y < 400) {
      eyesLocY = max(r.y - r.y/12, 0);
    }
      
    mouthLocY = (r.y + r.y/8);
    if (r.y < 50){
      mouthLocY = min (r.y + r.y, r.y*4);
    } 
    if (r.y > 200) {
      mouthLocY = max(r.y + r.y/10, r.y);
    }
             
    eyesSizeX = r.width/8;
    eyesSizeY = r.height/5;
    mouthSizeX = r.width/3;
    mouthSizeY = r.height/6;   
 
    fill(255);
    if ( id >= 1) {
      rect((video.width - r.x -1), mouthLocY, r.width/3, r.height/6, 0, 0, 20, 20); 
    } else {
      rect((video.width - r.x -1), mouthLocY, r.width/3, r.height/6, 20, 20, 0, 0); 
    }
      
    fill(0, 0, 220);
    rect((video.width - eyesLocX - 1), eyesLocY, eyesSizeX, eyesSizeY, 20, 20, 0, 0);
    rect((video.width - eyesLocX2 -1), eyesLocY, eyesSizeX, eyesSizeY, 20, 20, 0, 0);   

    noStroke();
    pushMatrix();
      translate((video.width - eyesLocX - 1), eyesLocY);
      rotate(rotAngle0+=0.2);
      rect(0, 0, r.width/24, r.height/26, -4, -4, -4, -4);
    popMatrix();
    pushMatrix();
      translate((video.width - eyesLocX2 - 1), eyesLocY); 
      rotate(rotAngle0+=0.2);
      rect(0, 0, r.width/24, r.height/26, -4, -4, -4, -4);
    popMatrix();
  }
    
       
  void rotPetals(){
    strokeWeight(1);
    fill(200, 120, 120);     
    for(int i = 0; i < in.bufferSize() - 1; i += 200) {
      pushMatrix();
        translate((video.width - r.x - 1), r.y);    
        rotate(rotAngle0+=0.5);
        ellipseMode(CENTER);
        ellipse(0, 0, 40, 150 + in.left.get( i + 1) * 900);        
      popMatrix();
    } 
  }
 
 
  void update(Rectangle newR) {
    r = (Rectangle) newR.clone();
  }


  void countDown() {
    timer--;
  }
  
  boolean end() {
    if (timer < 0) return true;
    return false;
  } 
}