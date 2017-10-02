
int x = 0;
int xdir = 10;
int y = 100;
int ydir = 10;

void setup() {
  size(800, 600);
}

void draw() {
  background(255, 255, 255);
  fill(255, 0, 0);
  rect(x, y, 100, 100);
  x+=xdir;
  y+=ydir;
  if (x+100 >= 800) {
    xdir = -xdir;
  }
  if (x <= 0) {
    xdir = -xdir;
  }
  if (y+100 >= 600) {
    ydir = -ydir;
  }
  if (y <= 0) {
    ydir = -ydir;
  }
  if (keyCode == 32) {
    keyCode = 0;
    xdir = -xdir;
  }
  if (keyCode == 37) {
    keyCode = 0;
    if (xdir==0) {
      xdir = 10;
    }
    xdir = -ydir;
    ydir = 0;
  }
  if (keyCode == 38) {
    keyCode = 0;
    if (ydir==0) {
      ydir = 10;
    }
    ydir = -ydir;
    xdir = 0;
  }
  if (keyCode == 39) {
    keyCode = 0;
    if (xdir==0) {
      xdir = 10;
    }
    xdir = -xdir;
    ydir = 0;
  }
  if (keyCode == 40) {
    keyCode = 0;
    if (ydir==0) {
      ydir = 10;
    }
    ydir = -ydir;
    xdir = 0;
  }
}