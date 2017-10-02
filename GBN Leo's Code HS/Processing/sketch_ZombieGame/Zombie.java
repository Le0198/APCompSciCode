import processing.core.*;
import java.awt.Color;

public class Zombie extends Person {
  private int side = (int)(Math.random() * 4);

  public Zombie(PApplet app) {
    super(app);
    if (side == 0) {
      setXPos(0);
      setYPos((int)(Math.random()*app.height));
    } else if (side == 1) {
      setXPos((int)(Math.random()*app.width));
      setYPos(0);
    } else if (side == 2) {
      setXPos(app.width);
      setYPos((int)(Math.random()*app.height));
    } else if (side == 3) {
      setXPos((int)(Math.random()*app.width));
      setYPos(app.height);
    }
    setColor(new Color(0, 255, 0));
    setYSpeed(5);
    setXSpeed(5);
  }

  public void update( Survivor s ) {
    if (s.getXPos() > this.getXPos() && s.getXPos() < this.getXPos()+7 ) {
     this.setXSpeed(0);
     } else if (s.getXPos() > this.getXPos()) {
     this.setXSpeed(1);
     } else if (s.getXPos() < this.getXPos()+7) {
     this.setXSpeed(-1);
     }
     if (s.getYPos() > this.getYPos() && s.getYPos() < this.getYPos()+15 ) {
     this.setYSpeed(0);
     } else if (s.getYPos() > this.getYPos()) {
     this.setYSpeed(1);
     } else if (s.getYPos() < this.getYPos()+7) {
     this.setYSpeed(-1);
     }
    super.update();
  }
}