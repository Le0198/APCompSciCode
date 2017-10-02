import processing.core.*;

public class Player {

  private PApplet app;
  private int hue=0;
  private int xspeed=0;
  private int yspeed=0;
  private int xsize=0;
  private int ysize=0;
  private int ypos=0;
  private int xpos=0;

  public Player(PApplet app, int hue) {
    this.app = app;
    this.hue = hue;
    this.xspeed = 0;
    this.yspeed = 0;
    this.xsize = 25;
    this.ysize = 25;
    this.xpos = 400;
    this.ypos = 300;
  }
  public void move() {
    ypos+=yspeed;
    if (ypos<0) {
      ypos=0;
      yspeed=0;
    } else if (ypos>600-ysize) {
      ypos=600-ysize;
      yspeed=0;
    }
    xpos+=xspeed;
    if (xpos<0) {
      xpos=0;
      xspeed=0;
    } else if (xpos>800-xsize) {
      xpos=800-xsize;
      xspeed=0;
    }
  }

  public void setYSpeed(int yspeed) {
    this.yspeed=yspeed;
  }
  public void setXSpeed(int xspeed) {
    this.xspeed=xspeed;
  }
  public void drawPlayer() {
    app.fill(hue);
    app.rect(xpos, ypos, xsize, ysize);
  }
  public int checkXPos() {
    return(xpos);
  }
  public int checkYPos() {
    return(ypos);
  }
}