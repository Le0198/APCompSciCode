import java.awt.Color;

import processing.core.*;

public class Person {
private PApplet app;
  //private Color color = Color.RED;
  private Color color = new Color(255, 255, 0);
  private int size = 15;
  private int xPos = 400;
  private int yPos = 300;
  private int xSpeed = 0;
  private int ySpeed = 0;

  public Person(PApplet app) {
    this.app = app;
  }
  
  public void draw(){
    app.fill(color.getRGB());
    app.rect(xPos,yPos,size,size);
  }
  
  public void update(){
    xPos+=xSpeed;
    yPos+=ySpeed;
    
  }
  public PApplet getApp(){
    return app;
  }
  public Color getColor(){
    return color;
  }
  public int getSize(){
    return size;
  }
  public int getXPos(){
    return xPos;
  }
  public int getYPos(){
    return yPos;
  }

  public void setXSpeed(int speed){
    xSpeed = speed;
  }
  public void setYSpeed(int speed){
    ySpeed = speed;
  }
  public void setXPos( int pos ){
    xPos = pos;
  }
  public void setYPos( int pos ){
    yPos = pos;
  }
  public void setColor( Color color ){
    this.color = color;
  }
}