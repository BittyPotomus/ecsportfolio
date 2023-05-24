class Hay {
  int x, y;
  PImage h1;

  Hay() {
    x = int(random(width));
    y = 500;
    h1 = loadImage("hay.png");
  }

  void display() {
    imageMode(CENTER);
    h1.resize(100,100);
    image(h1, x, y);
  }
}
