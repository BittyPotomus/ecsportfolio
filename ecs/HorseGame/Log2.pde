class Log2 {
  int x, y;
  PImage l2;

  Log2() {
    x = 0;
    y = 600;
    l2 = loadImage("log2.png");
  }

  void display() {
    imageMode(CENTER);
    l2.resize(250,150);
    image(l2, x, y);
  }

  void move() {
    if(x>1000){
      x = 0;
    }
    x = x + 1;
  }
}
