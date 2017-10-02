/*int[] nums = {12, 16, 31, 7, 9, 100, 902, 75, 43 };
int i = 0;

while (i < nums.length) {
  if ( (nums[i]%2) == 0) sum+=nums[i];
  i++;
}
println(sum);*/
size(800,600);
background(255);
strokeWeight(3);
int i = 0;
while(i < 100){
  float diameter = random(100);
  float circlex = random(width-diameter)+.5*diameter;
  float circley = random(height-diameter)+ .5 *diameter;
  ellipse(circlex, circley, diameter, diameter);
  i ++;
}