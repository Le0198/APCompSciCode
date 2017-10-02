import processing.core.*;

public class Enemy {
  private PApplet app;
  private int xPos;
  private int yPos;
  private int xSpeed;
  private int ySpeed;
  private int diameter;
  private int hue;

  public Enemy(PApplet app, int diameter, int hue) {
    this.app = app;
    this.xPos = (int)(Math.random() * 800);
    this.yPos = (int)(Math.random() * 600);
    this.xSpeed = -5;
    this.ySpeed = 5;
    this.diameter = diameter;
    this.hue = hue;
  }

  public void draw() {
    app.fill(hue);
    app.ellipse(xPos, yPos, diameter, diameter);
  }

  public void update() {
    yPos+=ySpeed;
    if (yPos-diameter/2<=0) {
      yPos=diameter/2;
      ySpeed=0;
    } else if (yPos>app.height-diameter/2) {
      yPos=600-diameter/2;
      ySpeed=0;
    }
    xPos+=xSpeed;
    if (xPos-diameter/2<=0) {
      xPos=diameter/2;
      xSpeed=0;
    } else if (xPos>app.width-diameter/2) {
      xPos=800-diameter/2;
      xSpeed=0;
    }
  }
  public void setYSpeed(int ySpeed) {
    this.ySpeed=ySpeed;
  }
  public void setXSpeed(int xSpeed) {
    this.xSpeed=xSpeed;
  }
  public int checkXPos() {
    return(xPos);
  }
  public int checkYPos() {
    return(yPos);
  }
}