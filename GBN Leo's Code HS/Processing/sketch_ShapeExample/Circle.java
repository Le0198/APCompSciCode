import processing.core.*;
import java.awt.Color;

public class Circle extends Shape {
  
  public Circle(PApplet app) {
    super(app);
    setColor( Color.GREEN );
  }
  
  public void draw() {
    super.draw();
    getApp().ellipse( getXPos(), getYPos(), getSize(), getSize() );
  }
}