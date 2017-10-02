int[][] grid = new int[18][18];
int[] colors = {255, #808080, 0, #FFFF00, #FFC800};
int colorindex = 0;
int rectsize = 40;
int timer = 120;

void setup(){
  size(720,720);
  for(int i = 0; i < grid.length; i++){
    for(int j = 0; j < grid[i].length; j++){
      grid[i][j] = colors[colorindex];
    }
  }
}

void draw(){
  makeSquares();
  timer--;
  if(timer >=0){
  message("Press <space> to save your picture", 180, height/2);
  }
}

void makeSquares(){
  for(int i = 0; i < grid.length; i++){
    for(int j = 0; j < grid[i].length; j++){
      stroke(0);
      fill(grid[i][j]);
      rect(rectsize * i,rectsize * j, rectsize,rectsize);
    }
  }
}

void mouseClicked(){
  int col = mouseY/rectsize;
  int row = mouseX/rectsize;
  if(grid[row][col] == colors[colorindex] && colorindex+1 < colors.length){
    colorindex+=1;
    grid[row][col] = colors[colorindex];
  } else {
    colorindex = 0;
    grid[row][col] = colors[colorindex];
  }
}

void keyPressed() {
  if (keyCode == 32) {
    save("yourpicture.png");
  }
}

void message(String msg, int x, int y){
  textFont( createFont("Arial", 24, true) );       
  textAlign(LEFT);
  fill(0);
  text(msg,x,y);
}