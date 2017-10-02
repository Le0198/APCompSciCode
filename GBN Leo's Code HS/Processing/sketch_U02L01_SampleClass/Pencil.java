import processing.core.*;

public class Pencil {
  
  /*************************
   *Member Variable Section*
   ************************/
  public final static int MIN_SIZE = 1;
  public final static int MAX_SIZE = 50;
  private PApplet app;
  private int hue = 0;
  private int size = 3;


  /*************************
   *      Constructor      *
   ************************/


  public Pencil(PApplet app, int hue, int size) {
    this.app = app;
    this.hue = hue; //Pencil.hue = hue;
    this.size = size; // Pencil.size = size;
  }


  /*************************
   *         Method        *
   ************************/

  public void drawLine(int x1, int y1, int x2, int y2) {
    app.stroke(hue);
    app.strokeWeight(size);
    app.line(x1, y1, x2, y2);
  }

  public void drawCircle(int x1, int y1, int di) {
    app.stroke(hue);
    app.strokeWeight(size);
    app.ellipse(x1, y1, di, di);
  }

  public void setHue(int hue) {
    if(hue > 0 && hue <= Math.pow(256,3.0)){
      this.hue = hue;
    }
  }

  public void setSize(int size) {
    if(size >= MIN_SIZE && size <= MAX_SIZE){
      this.size = size;
    }
  }
  
}  