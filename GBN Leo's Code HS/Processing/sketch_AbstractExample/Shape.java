import processing.core.*;
import java.awt.Color;

abstract class Shape {
  private PApplet app;
  private float xPos = 0;
  private float yPos = 0;
  private float xSpeed = 0;
  private float ySpeed = 0;
  private float size = 0;
  private Color color = Color.WHITE;
  
  public Shape(PApplet app) {
    this.app = app;
    this.xPos = (float) (Math.random() * 800);
    this.yPos = (float) (Math.random() * 600);
    this.xSpeed = (float) (Math.random() * 20 - 10);
    this.ySpeed = (float) (Math.random() * 20 - 10);
    this.size = (float) (Math.random() * 20);
  }
  
  public void update() {
    xPos += xSpeed;
    yPos += ySpeed;
  }
  
  public abstract void draw();
  
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