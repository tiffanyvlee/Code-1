class Walker2 {
  float rot = 0;
  float x, y, xStep, yStep, siz;


  Walker2(float x, float y) {
    this.x = x;
    this.y = y;
    this.siz = 2;
    this.xStep = this.siz * 20;
    this.yStep = this.siz * 20;
    img = loadImage("sock1.png");
  }


  void display() {
    rot+=10;
    pushMatrix();
      translate (width/2, height/2);
      
      tint(255, 50);
      rotate(radians(rot));
      img.resize(40, 40);
      image(img, x, y);
    popMatrix();   
  }


  void move() {
    int rand = (int)random(10);
    switch (rand) {
    case 0:
      x-=xStep;
      break;
    case 1:
      x+=xStep;
      break;
    case 2:
      y-=yStep;
      break;
    case 3:
      y+=yStep;
      break;
    default:
      break;
    }
  }
}