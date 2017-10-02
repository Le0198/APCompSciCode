//Paddle(Player) variables
int Paddlex = 350;
int Paddley = 110;
int Paddlexspeed = 0;
//Regular Balls variables
int RBy = 800;
int RByspeed = 6; 
int timerRB = 60;
int timerRBdone=115;
int RBx = 700;
int RBxchange = 200;
//Goal variables
int goalr = 100;
int goalg = 0;
int goalb = 255;
//Score variables
int score = 0;

void setup() {
  size(1000, 800);
}

void draw() {
  background(0);
  paddle();
  goal();
  timerRB--;
  if (timerRB <= 0 && timerRBdone > 0) {
    regularball(0, 255, 100);
    if (timerRBdone <= 0) {
      RBy = 800;
      RByspeed = 6; 
      timerRB = 60;
      timerRBdone = 115;
      if (RBx > 100 && RBx <= 700) {
        RBx -= RBxchange;
      } else {
        RBxchange = -RBxchange;
        RBx -= RBxchange;
      }
    }
  }
  write("Score:", 810, 50);
}

void write(String message, int x, int y) {
  textFont( createFont("Arial", 24, true) );       
  fill(255);
  textAlign(LEFT);
  text(message, x, y);
  text(score, x+70, y);
}

void goal() {
  int boxsize = 50;
  strokeWeight(5);
  for (int r = 0; r <= 1000; r+=boxsize) {
    for (int c = 0; c <= 50; c+=boxsize) {
      fill(random(goalr), goalg, random(goalb));
      rect(r, c, boxsize, boxsize);
    }
  }
}

void paddle() {
  fill(0, 0, 255);
  strokeWeight(3);
  stroke(100, 0, 255);
  Paddlex += Paddlexspeed;
  rect(Paddlex, Paddley, 100, 30);
  if (Paddlex >= 900 || Paddlex <= 0) {
    Paddlex += -Paddlexspeed;
  }
}


void regularball(int RBr, int RBg, int RBb) {
  fill(random(RBr), random(RBg), random(RBb));
  stroke(RBr, RBg, RBb);
  ellipse(RBx, RBy, 25, 25);
  RBy -= RByspeed;
  timerRBdone--;
  if (RBx > Paddlex-13 && RBy > Paddley && RBx < Paddlex+113 && RBy < Paddley+50) {
    score++;
    RBr = 0;
    RBg = 0;
    RBb = 0;
    RBy = Paddley + 50;
    RByspeed = 0;
  }
  if (RBy == 110) {
    score--;
  }
}

void keyPressed() {
  if (keyCode == 37) {
    Paddlexspeed = -5;
  }
  if (keyCode == 39) {
    Paddlexspeed = 5;
  }
}

void keyReleased() {
  if (keyCode == 37) {
    Paddlexspeed = 0;
  }
  if (keyCode == 39) {
    Paddlexspeed = 0;
  }
}

void mouseClicked() {
  if (goalr==100) {
    goalr = 55;
    goalg = 155;
    goalb = 250;
  } else {
    goalr = 100; 
    goalg = 0;
    goalb = 255;
  }
}