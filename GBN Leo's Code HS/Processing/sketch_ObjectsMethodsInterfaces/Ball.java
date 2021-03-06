import processing.core.*;
import java.util.List;
 
public class Ball implements Comparable<Ball>, List<E>{
  /****************************
  *  MEMBER VARIABLE SECTION  *
  *****************************/
  private PApplet app;
  private int color = (int) -(Math.random() * Math.pow(255, 3.0));
  private int size = (int) (Math.random() * 50 + 25);
  private int xPos = (int) (Math.random() * (800 - size) + size / 2);
  private int yPos = (int) (Math.random() * (600 - size) + size / 2);
  private int xSpeed = (int) (Math.random() * 20 + 5);
  private int ySpeed = (int) (Math.random() * 20 + 5);
  
    /****************************
  *        CONSTRUCTOR        *
  *****************************/
  public Ball(PApplet app) {
    this.app = app;
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
    app.ellipse(xPos, yPos, size, size);
  }
  
  public int getX() {
    return xPos;
  }
  
  public String toString() {
    return "I am a ball";
  }
  
  public boolean equals(Ball b) {
    return(xPos == b.getX());
    }
    
  public int compareTo(Ball b){
    return xPos - b.getX();
  }
}