double[] nums = new double[100];
for(int i = 0; i < nums.length; i++){
  nums[i] = (Math.random() * 15)+10;
  println(nums[i] + ",");
}

double small = nums[0];
double big = nums[0];
for(double num : nums){
  if(num < small){
    small = num;
  }
  if(num > big){
    big = num;
  }
}
println(small + ", " + big);