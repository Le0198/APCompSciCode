import processing.core.*;

public class Car {

  //Member Variables
  private PApplet app;
  private int xSpeed = 5;
  private int xSize = 50;
  private int ySize = 50;
  private int xPos = 800/2;
  private int yPos = 600/2;
  private int hue = 0;

  //Constructor
  public Car ( PApplet app, int xSpeed, int xSize, int ySize, int xPos, int yPos, int hue ) {
    this.app = app;
    this.xSpeed = xSpeed;
    this.xSize = xSize;
    this.ySize = ySize;
    this.xPos = xPos;
    this.yPos = yPos;
    this.hue = hue;
  }

  //Methods
  public void turn() {
    xSpeed *= -1;
  }

  public void move() {
    xPos += xSpeed;
    if (xPos < 0 || xPos > 800 - xSize) {
      turn();
    }
  }

  public void draw() {
    app.fill(hue);
    app.rect(xPos, yPos, xSize, ySize);
  }
}