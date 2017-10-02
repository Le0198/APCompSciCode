ArrayList<Snowflake> snowflakes = new ArrayList<Snowflake>();
int arrsize = 100;

void setup() {
  size(800, 600);
  background(0);
 for (int i = 0; i < arrsize; i++) {
    snowflakes.add(new Snowflake(this));
  }
}

void draw() {
  background(0);
  for (Snowflake snowflake : snowflakes) {
    snowflake.draw();
    snowflake.update();
  }
  for ( int i = 0; i < snowflakes.size(); i++) {
    if (snowflakes.get(i).getYPos() > 600) {
      snowflakes.remove(i);
      i--;
      snowflakes.add(new Snowflake(this));
    }
  }
  println(snowflakes.size());
}