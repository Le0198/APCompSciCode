import processing.core.*;

public class Snowflake {
  
  private PApplet app;
  private int xPos;
  private int yPos;
  private int diameter;
  private int xSpeed;
  private int ySpeed;
  private int glow;
  private int hue;

  public Snowflake ( PApplet app) {
  this.app = app;
  this.xPos =(int)( Math.random()*800 );
  this.yPos = 0;
  this.xSize1 = 10;
  this.ySize1 = 10;
  this.xSize2 = 20;
  this.ySize2 = 20;
  this.diameter = 25;
  this.xSpeed = (int) (Math.random() * -2) + 1;
  this.ySpeed = (int) ( Math.random() * 15) + 5;
  this.hue = 255;
  }

  public void draw(){
    app.strokeWeight(1);
    app.stroke(hue);
    app.line(xSize1,ySize1,xSize2,ySize2);
    app.line(xSize1,ySize2,xSize2,ySize1);
    app.line(xSize1,ySize2-ySize1 /2 , xSize2, ySize2 - ySize1/2 );
    app.line(xSize2-xSize1/2, ySize1 , xSize2-xSize1/2, ySize2 );
  }
  
  public void update(){
    yPos+=ySpeed;
    xPos+=xSpeed;
  }
  public int getYPos(){
    return(yPos);
  }
}