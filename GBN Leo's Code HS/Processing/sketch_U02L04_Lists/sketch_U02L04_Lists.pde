//Ball[] balls = new Ball[arrSize];
ArrayList<Ball> balls = new ArrayList<Ball>();

void setup() {
  size(800, 600);
  background(0);
  for (int i = 0; i < 5; i++) {
    balls.add( new Ball(this) );
  }
}

void draw() {
  background(0);
  for (Ball ball : balls) {
    ball.update();
    ball.draw();
  }
}

void keyPressed() {
  if (keyCode == 38) {
    balls.add( new Ball(this) );
  } else if (keyCode == 40 && balls.size() > 1) {
   balls.remove((int)Math.random() * balls.size());
  }
}