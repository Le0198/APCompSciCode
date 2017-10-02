import processing.core.*;


public class Paddle {

  //Member Variables
  private PApplet app;
  private int xPos = 25;
  private int yPos = 25;
  private int ySpeed = 5;
  private int xSize = 25;
  private int ySize = 100;
  private int hue = 0;

  //Constructor
  public Paddle ( PApplet app, int xPos, int yPos, int ySpeed, int xSize, int ySize, int hue ) {
    this.app = app;
    this.xPos = xPos;
    this.yPos = yPos;
    this.ySpeed = ySpeed;
    this.xSize = xSize;
    this.ySize = ySize;
    this.hue = hue;
  }

  //Methods
  public void draw() {
    app.fill(hue);
    app.rect(xPos, yPos, xSize, ySize);
  }

  public void move() {
    yPos+=ySpeed;
    if (yPos <= 0) {
      yPos = 0;
    }
    if (yPos >= 600-ySize) {
      yPos = 600-ySize;
    }
  }

  public void setSpeed(int ySpeed) {
    this.ySpeed = ySpeed;
  }
}