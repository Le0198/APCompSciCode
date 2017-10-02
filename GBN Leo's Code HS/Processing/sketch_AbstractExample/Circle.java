import processing.core.*;
import java.awt.Color;

public abstract class Circle extends Shape {
  
  public Circle(PApplet app) {
    super(app);
    setColor( Color.MAGENTA );
  }
  
  public void straw() {
    getApp().fill( getColor().getRGB() );
    getApp().ellipse( getXPos(), getYPos(), getSize(), getSize() );
  }
}