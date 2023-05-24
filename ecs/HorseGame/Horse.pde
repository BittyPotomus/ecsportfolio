class Horse {
  int x, y;
  PImage h1;

  Horse() {
    x = width/2;
    y = 700;
    h1 = loadImage("horseleft.png");
  }

  void display() {
    imageMode(CENTER);
    h1.resize(150,150);
    image(h1, x, y);
  }

  void move(char dir) {
    if (dir == 'u'){
      y= y - 10;
     } else if (dir == 'd') {
       y = y + 10;
     } else if (dir == 'l') {
       x = x - 10;
     } else if (dir == 'r') {
       x = x + 10;
     }
     if(x>width) {
    x = 0;
  } else if(x<0) {
    x = width;
  } else if(y<0) {
    y = height;
  } else if(y>height) {
    y = 0;
  }
  }
}
