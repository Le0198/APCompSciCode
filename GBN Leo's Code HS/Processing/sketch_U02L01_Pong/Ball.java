import processing.core.*;


public class Ball {

  //Member Variables
  private PApplet app;
  private int xPos = 0;
  private int yPos = 0;
  private int xSpeed = 3;
  private int ySpeed = 3;
  private int diameter = 25;
  private int hue = 255;

  //Constructor
  public Ball ( PApplet app, int xPos, int yPos, int xSpeed, int ySpeed, int diameter, int hue ) {
    this.app = app;
    this.xPos = xPos;
    this.yPos = yPos;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.diameter = diameter;
    this.hue = hue;
  }

  //Methods 
  public void draw() {
    app.fill(hue);
    app.ellipse(xPos, yPos, diameter, diameter);
  }

  public void move() {
    xPos+=xSpeed;
    yPos+=ySpeed;
    if (xPos >= 800-diameter/2 || xPos <=0+diameter/2) {
      xBounce();
    }
    if (yPos >= 600-diameter/2 || yPos <=0+diameter/2) {
      yBounce();
    }
  }

  public void yBounce() {
    ySpeed*=-1;
  }
  public void xBounce() {
    xSpeed*=-1;
  }
}