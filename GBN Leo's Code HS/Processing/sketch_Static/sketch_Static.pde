public ArrayList<Ball> balls = new ArrayList<Ball>();

void setup() {
  size(800, 600);
  background(0);
  
  for(int i = 0; i < 10; i++) {
    balls.add(new Ball(this));
  }
}

void draw() {
  background(0);
  for(Ball ball : balls) {
    ball.update();
    ball.draw();
  }
  println(balls.get(0).xPos);
}