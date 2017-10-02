import processing.core.*;
import java.awt.Color;

public class Square extends Shape {
  
  public Square(PApplet app) {
    super(app);
    setColor( Color.RED );
  }
  
  public void draw() {
    super.draw();
    getApp().rect( getXPos(), getYPos(), getSize(), getSize() );
  }
}