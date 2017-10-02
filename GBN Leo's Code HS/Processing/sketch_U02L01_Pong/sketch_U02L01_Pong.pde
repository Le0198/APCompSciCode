Ball pong = new Ball(this, 300, 500, 10, 10, 25, 0);
Paddle player1 = new Paddle(this, 15, 200, 20, 10, 100, 0);
Paddle player2 = new Paddle(this, 775, 200, 20, 10, 100, 0);


void setup() {
  size(800, 600);
  player1.setSpeed(0);
  player2.setSpeed(0);
}

void draw() {
  background(255);
  pong.draw();
  pong.move();
  player1.draw();
  player2.draw();
  player1.move();
  player2.move();
}

void keyPressed() {
  if (keyCode == 87) {
    player1.setSpeed(-15);
  }
  if (keyCode == 83) {
    player1.setSpeed(15);
  }
  if (keyCode == 38) {
    player2.setSpeed(-15);
  }
  if (keyCode == 40) {
    player2.setSpeed(15);
  }
}

void keyReleased() {
  if (keyCode == 87) {
    player1.setSpeed(0);
  }
  if (keyCode == 83) {
    player1.setSpeed(0);
  }
  if (keyCode == 38) {
    player2.setSpeed(0);
  }
  if (keyCode == 40) {
    player2.setSpeed(0);
  }
}