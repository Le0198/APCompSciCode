import processing.core.*;
 
public class Ball {
  /****************************
  *  MEMBER VARIABLE SECTION  *
  *****************************/
  private PApplet app;
  private int color;
  private int size;
  private int xPos;
  private int yPos;
  private int xSpeed;
  private int ySpeed;
  
  
  /****************************
  *        CONSTRUCTOR        *
  *****************************/
  public Ball(PApplet app) {
    this.app = app;
    this.color = (int) -(Math.random() * Math.pow(255, 3.0));
    this.size = (int) (Math.random() * 40 + 10);
    this.xPos = (int)(Math.random() * 800);
    this.yPos = (int)(Math.random() * 600);
    this.xSpeed = (int)(Math.random() * 15 + 5);
    this.ySpeed = (int)(Math.random() * 15 + 5);
  }
  
  
  /****************************
  *          METHODS          *
  *****************************/
  public void update() {
    xPos += xSpeed;
    yPos += ySpeed;
    if(xPos < 0 || xPos > 800) {
      xSpeed = -xSpeed;
    }
    if(yPos < 0 || yPos > 600) {
      ySpeed = -ySpeed;
    }
  }
  
  public void draw() {
    app.fill(color);
    app.noStroke();
    app.ellipse(xPos, yPos, size, size);
  }
}