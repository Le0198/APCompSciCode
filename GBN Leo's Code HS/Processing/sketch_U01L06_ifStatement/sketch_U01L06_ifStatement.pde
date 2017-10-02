void setup() {
  size(800, 600);
}

void draw() {
  background(0, 100, 200);
  write("How are you feeling?", 295, 200);
  if (mouseX < 267) {
    mad(400, 300);
  }
  if (mouseX >= 267) {
    meh(400, 300);
  }
  if (mouseX >= 534) {
    happy(400, 300);
  }
}

void happy(int x, int y) {
  stroke(0);
  strokeWeight(1);
  fill(255, 255, 0);
  ellipse(x, y, 100, 100);
  fill(0);
  ellipse(x-15, y-10, 25, 25);
  ellipse(x+15, y-10, 25, 25);
  arc(x, y+5, 80, 80, 0, PI);
}

void meh(int x, int y) {
  stroke(0);
  strokeWeight(1);
  fill(255, 150, 0);
  ellipse(x, y, 100, 100);
  fill(0);
  ellipse(x-15, y-10, 25, 25);
  ellipse(x+15, y-10, 25, 25);
  strokeWeight(4);
  line(x-30, y+20, x+30, y+10);
}

void mad(int x, int y) {
  stroke(0);
  strokeWeight(1);
  fill(255, 0, 0);
  ellipse(x, y, 100, 100);
  fill(0);
  strokeWeight(4);
  arc(x-15, y-10, 25, 25, 0, PI);
  arc(x+15, y-10, 25, 25, 0, PI);
  line(x-30, y+15, x+30, y+15);
}

void write(String message, int x, int y) {
  textFont( createFont("Arial", 24, true) );       
  fill(0);

  textAlign(LEFT);
  text(message, x, y);
}

void slider() {
  fill(50, 50, 50);
  rect(30, 50, 740, 25);
  rect(mouseX, 40, 50, 50);
}