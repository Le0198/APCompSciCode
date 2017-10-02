import processing.core.*;

public class Person {
  private PApplet app;
  private String name;
  private double x, y, z;
  private double height, weight;
  
  public Person(PApplet app,String s) {
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