int b = 0;

void setup() {
  size(800, 600);
}
void draw() {
  b=0;
  int boxsize = 50;
  background(255, 255, 255);
  strokeWeight(5);
  for (int r = 0; r <= 800; r+=boxsize) {
    for (int c = 0; c <= 800; c+=boxsize) {
      fill(random(255), 0, random(100));
      rect(r, c, boxsize, boxsize);
      fill(random(100),0,random(255));
      ellipse(r,c,boxsize,boxsize);
    }
  }
}