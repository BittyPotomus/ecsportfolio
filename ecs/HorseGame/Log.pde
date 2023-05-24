class Log {
  int x, y;
  PImage l1;

  Log() {
    x = width;
    y = 650;
    l1 = loadImage("log1.png");
  }

  void display() {
    imageMode(CENTER);
    l1.resize(350,200);
    image(l1, x, y);
  }

  void move() {
    if(x<-50){
      x = width;
    }
    x = x - 1;
  }
}
