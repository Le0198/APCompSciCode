import processing.core.*;

public class Dragon extends Animal
implements Action {
  public Dragon(PApplet app, String s){
    super(app, s);
  }
  
  public void move(){
    getApp().println("I'm flying");
  }
  
  public void fight(){
    getApp().println("I'm breathing fire");
  }
}