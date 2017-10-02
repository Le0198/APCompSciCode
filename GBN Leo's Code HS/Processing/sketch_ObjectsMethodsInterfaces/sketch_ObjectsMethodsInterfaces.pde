Ball b1 = new Ball(this);
Ball b2 = new Ball(this);
Ball b3 = b1;
String s1 = "aaa";
String s2 = "aa";

void setup() {
  size(800, 600);
}

void draw() {
  background(0);
  b1.update();
  b1.draw();
  b2.update();
  b2.draw();
  println(s1.compareTo(s2));
 /* println(b1.toString());
  println(b2.toString());
  println(b3.toString());
  println("");
  println(b1.equals(b2));
  println(b1.equals(b3));*/
  //println(name.toString());
  b1.compareTo(b2);
}