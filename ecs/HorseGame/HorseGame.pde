// Eden Candelaria | 26 Apr 2023 | Horse Game
boolean play;
Horse lenny;
Log log1;
Log2 log2;
Hay hay1;
int x, y;
int score;
int lives;
float logDist, log2Dist, hayDist,d;

void setup() {
  size(1000, 800);
  play = false;
  log1 = new Log();
  log2 = new Log2();
  lenny = new Horse();
  hay1 = new Hay();
  score = 0;
  lives = 1;
}

void draw() {
  println(logDist);
  if (!play) {
    startScreen();
  } else {
    logDist=dist(lenny.x, lenny.y, log1.x, log1.y);
    log2Dist=dist(lenny.x, lenny.y, log2.x, log2.y);
    hayDist=dist(lenny.x, lenny.y, hay1.x, hay1.y);
    background(#3659A2);
    drawBackground();
    infoPanel();
    log1.display();
    log1.move();
    log2.display();
    log2.move();
    hay1.display();
    lenny.display();
    if(hayDist<50){
      lives = lives+1;
      hay1.x = int(random(width));
    }
    if(logDist<50){
      lenny.x = log1.x;
      score = score +1;
      //lenny.x = log1.x;
    }
    if(log2Dist<50){
      lenny.x = log2.x;
      score = score +1;
      //lenny.x = log1.x;
    }
    if(lives <= 0) {
      gameOver();
    }
    if(lenny.x<20){
      lives-=1;
      lenny.x=width/2;
    }
  }
}

void keyPressed() {
  if (key == 'w') {
    lenny.move('u');
  } else if (key == 'a') {
    lenny.move('l');
  } else if (key == 's') {
    lenny.move('d');
  } else if (key == 'd') {
    lenny.move('r');
  } else if (key == ' ') {
    play = true;
  }
}

void drawBackground() {
  fill(#1C5F17);
  rect(0, 700, width, 100);
  fill(#07698B);
  rect(0, 585, width, 115);
  fill(#C18006);
  rect(0, 475, width, 115);
  fill(#11799D);
  rect(0, 275, width, 200);
  fill(#1C5F17);
  rect(0, 150, width, 165);
  fill( #E3990E);
  rect(0, 145, width, 115);
}

void startScreen() {
  background(#1F5A21);
  fill(255,255,255);
  textSize(40);
  textAlign(CENTER);
  text("Welcome to the Horse Game!", width/2, 400);
  textSize(30);
  text("Made by Eden Candelaria", width/2, 475);
  text("Press the space bar to start the game", width/2, 525);
}

void gameOver() {
  background(0);
  fill(255);
  textSize(40);
  textAlign(CENTER);
  text("Game Over!", width/2, 400);
  text("Score:", width/2, 450);
  noLoop();
}

void infoPanel() {
  fill(128, 128);
  rect(0, 0, width, 80);
  fill(0);
  textSize(25);
  text("Score: " + score, 50, 70);
  textSize(25);
  text("Lives:" + lives, 200, 70);
}
