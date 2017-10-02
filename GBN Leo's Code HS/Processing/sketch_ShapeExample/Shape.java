import processing.core.*;
import java.awt.Color;

public class Shape {
  private PApplet app;
  private float xPos = 0;
  private float yPos = 0;
  private float size = 0;
  private float xSpeed = (float)(Math.random() * 30 - 15);
  private float ySpeed = (float)(Math.random() * 30 - 15);
  private Color color = Color.WHITE;
  
  public Shape(PApplet app) {
    this.app = app;
    this.xPos = (float) (Math.random() * 800);
    this.yPos = (float) (Math.random() * 600);
    this.size = (float) (Math.random() * 20);
  }
  
  public void draw() {
    app.fill( color.getRGB() );
  }
  
  public void update(){
    xPos+=xSpeed;
    yPos+=ySpeed;
  }
  
  public boolean isOnScreen(){
    while(xPos <= app.width+size && xPos >= -size && yPos < app.height+size && yPos > -size){
      return true;
    }
    return false;
  }
  
  public PApplet getApp() {
    return app;
  }
  
  public float getXPos() {
    return xPos;
  }
  
  public float getYPos() {
    return yPos;
  }
  
  public float getSize() {
    return size;
  }
  
  public Color getColor() {
    return color;
  }
  
  public void setColor(Color color) {
    this.color = color;
  }
}