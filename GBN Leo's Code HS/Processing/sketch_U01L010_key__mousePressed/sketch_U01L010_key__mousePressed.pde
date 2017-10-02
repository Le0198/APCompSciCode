void setup() {
  size(800, 600);
}

void draw() {
}

void keyPressed() {
  if (keyCode == 65) {
    background(255, 0, 0);
  }
}

void keyReleased() {
  if (keyCode == 65) {
    background(100,0,255);
  }
}

void mousePressed() {
  background(0, 255, 0);
}