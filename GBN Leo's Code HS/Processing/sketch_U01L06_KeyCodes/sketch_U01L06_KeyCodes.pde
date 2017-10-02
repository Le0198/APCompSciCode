void setup() {
  size(800,600);
}

void draw() {
  background(255,255,255);
  write(keyCode + "",20,20);
  //red
  if(keyCode == 82) {
    background(255,0,0);
  }
  //green
   if(keyCode == 71) {
    background(0,255,0);
  }
  //blue
   if(keyCode == 66) {
    background(0,0,255);
  }
}

void write(String message, int x, int y) {
  textFont( createFont("Arial", 24, true) );       
  fill(0);

  textAlign(LEFT);
  text(message, x, y);
}