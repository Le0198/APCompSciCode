import java.awt.Color;

ArrayList<Shape> shapes = new ArrayList<Shape>();

void setup() {
  size(800, 600);
}

void draw() {
  int c = 0, sq = 0;
  background(0);
  shapes.add( new Circle( this ) );
  shapes.add( new Square( this ) );
  for (Shape s : shapes) {
    s.draw();
    s.update();
    if (s instanceof Circle) {
      c++;
    } else {
      sq++;
    }
  }
  for( int i = 0; i < shapes.size(); i++){
    if(!shapes.get(i).isOnScreen()){
      shapes.remove(shapes.get(i));
    }
  }

  println("Squares: " + sq);
  println("Circles: " + c);
  println("Shapes : " + shapes.size());
}