import processing.core.*;
import java.awt.Color;

public class Square extends Shape {
  
  public Square(PApplet app) {
    super(app);
    setColor( Color.ORANGE );
  }
  
  public void draw() {
    getApp().fill( getColor().getRGB() );
    getApp().rect( getXPos(), getYPos(), getSize(), getSize() );
  }
}