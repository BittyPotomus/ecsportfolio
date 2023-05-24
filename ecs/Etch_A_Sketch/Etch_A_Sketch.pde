// Eden Candelaria || April 17, 2023 || Etch-A-Sketch

// Eden Candelaria | April 17, 2023 | EtchASketch

int x, y;
PImage png;
void setup() {
  //size(displayWidth,displayHeight);
  size(800,658);
  x=20;
  y=20;
}

void draw() {
  size(860
  //background(103,121,185);
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      moveUp(1);
    } else if (key == 's' || key == 'S') {
      moveDown(1);
    } else if (key == 'a' || key == 'A') {
      moveLeft(1);
    } else if (key == 'd' || key == 'D') {
      moveRight(1);
    }
  }
}

void mousePressed() { // Used for saving the image
  
}

void moveRight(int rep) {
  for (int i=0; i<rep; i=i+1) {
    point (x+i, y);
    x = x + rep;
  }
}

void moveLeft(int rep) {
   for (int i=0; i<rep; i=i+1) {
    point (x-i, y);
    x = x - rep;
  }
}

void moveUp(int rep) {
   for (int i=0; i<rep; i=i+1) {
    point (x, y-i);
    y = y - rep;
  }
}

void moveDown(int rep) {
   for (int i=0; i<rep; i=i+1) {
    point (x, y+i);
    y = y + rep;
  }
}
