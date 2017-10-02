Player hero = new Player(this, #FF0000);
ArrayList<Enemy> enemies = new ArrayList<Enemy>();
int enemyspeed = 10;

void setup() {
  size(800, 600);
  for (int i = 0; i < 10; i++) {
    enemies.add(new Enemy(this, 25, 0));
  }
}

void draw() {
  background(200);
  for (Enemy enemy : enemies) {
    enemy.draw();
    enemy.update();
  }
  for ( int i = 0; i < enemies.size(); i++) {
    if (enemies.get(i).checkXPos() > hero.checkXPos() && enemies.get(i).checkXPos() < hero.checkXPos()+13 ) {
      enemies.get(i).setXSpeed(0);
    } else if(enemies.get(i).checkXPos() > hero.checkXPos()){
      enemies.get(i).setXSpeed(enemyspeed);
    } else if(enemies.get(i).checkXPos() < hero.checkXPos()+13){
      enemies.get(i).setXSpeed(-enemyspeed);
    }
    if (enemies.get(i).checkYPos() > hero.checkYPos() && enemies.get(i).checkYPos() < hero.checkYPos()+25 ) {
      enemies.get(i).setYSpeed(0);
    } else if(enemies.get(i).checkYPos() > hero.checkYPos()){
      enemies.get(i).setYSpeed(enemyspeed);
    } else if(enemies.get(i).checkYPos() < hero.checkYPos()+13){
      enemies.get(i).setYSpeed(-enemyspeed);
    }
    if (enemies.get(i).checkYPos() > hero.checkYPos() && enemies.get(i).checkYPos() < hero.checkYPos()+25 && enemies.get(i).checkXPos() > hero.checkXPos() && enemies.get(i).checkXPos() < hero.checkXPos()+25 ){
      enemies.remove(i);
      i--;
      enemies.add(new Enemy(this, 25, 0));
    }
    //
  }
  hero.drawPlayer();
  hero.move();
}

void keyPressed() {
  if (keyCode == 38) {
    hero.setYSpeed(-15);
  } else if (keyCode == 40) {
    hero.setYSpeed(15);
  }
  if (keyCode == 37) {
    hero.setXSpeed(-15);
  } else if (keyCode == 39) {
    hero.setXSpeed(15);
  }
}

void keyReleased() {
  if (keyCode == 38) {
    hero.setYSpeed(0);
  } else if (keyCode == 40) {
    hero.setYSpeed(0);
  }
  if (keyCode == 37) {
    hero.setXSpeed(0);
  } else if (keyCode == 39) {
    hero.setXSpeed(0);
  }
}