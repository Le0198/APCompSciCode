
void setup(){
  print(Math.PI);
}

void draw() {
  //println( randomRange(0.0, 1.0) );

}

public double randomRange(double min,double max){
 max += .0000000000000001;
 double range = Math.abs(min - max);
 double shift = min;
 return((Math.random()*range)+shift);
}