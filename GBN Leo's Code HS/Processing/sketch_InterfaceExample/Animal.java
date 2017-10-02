import processing.core.*;

public class Animal {
  private PApplet app;
  private String name;
  private int legs;
  private boolean fur;
  
  public Animal(PApplet app,String s) {
    this.app = app;
    name = s;
  }
  
  public void speak(){
    app.println("My name is " + name);
  }
  
  public PApplet getApp() {
    return app;
  }
}