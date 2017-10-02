Pencil thinPencil = new Pencil(this, #000000, 2);
Pencil redPencil = new Pencil(this, #FF0000, 2);

void setup() {
  size(800, 600);
  background(255);
}

void draw() {
  println(Pencil.MAX_SIZE);
  thinPencil.setSize(10);
  thinPencil.setHue(2);
  thinPencil.drawLine(10,10,110,10);
  thinPencil.drawLine(10,60,110,60);
  thinPencil.drawCircle(60, 35, 50);
  redPencil.drawCircle(60,35,25);
}