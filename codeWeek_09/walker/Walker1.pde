
class Walker1 {

  float x, y, xStep, yStep, siz;


  Walker1(float x, float y) {
    this.x = x;
    this.y = y;
    this.siz = 2;
    this.xStep = this.siz * 20;
    this.yStep = this.siz * 20;
    img = loadImage("zombster.png");
  }

  void display() {
    tint(255, 100);
    img.resize(40, 40);
    image(img, x, y);
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