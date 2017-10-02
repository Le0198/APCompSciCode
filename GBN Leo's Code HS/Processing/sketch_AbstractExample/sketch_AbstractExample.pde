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
  
  for(Shape s : shapes) {
    s.update();
    s.draw();
  }
}