Car lightning = new Car(this, 10, 50, 25, 0,0, #FF0000);
Car mater = new Car(this, 3, 140, 70, 0, 208, #A55D35);
Car doc = new Car(this, 6, 80, 40, 0, 560, #0000FF);

void setup() {
  size(800, 600);
}

void draw() {
  background(255);
  lightning.move();
  lightning.draw();
  mater.move();
  mater.draw();
  doc.move();
  doc.draw();
}