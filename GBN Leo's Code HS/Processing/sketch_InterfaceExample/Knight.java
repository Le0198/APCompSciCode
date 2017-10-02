
import processing.core.*;

public class Knight extends Person implements Action {
  public Knight(PApplet app, String s){
    super(app, s);
  }
  
  public void move(){
    getApp().println("I'm walking");
  }
  
  public void fight(){
    getApp().println("I'm fighting");
  }
}