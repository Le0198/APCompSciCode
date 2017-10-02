int[] nums = {3,2,17,56,12,47,126,234,6};

//find sum
int sum = 0;
for(int num : nums){
  sum += num;
}
println(sum);

//find smallest number
int small = Integer.MAX_VALUE;
for(int num : nums){
  small = Math.min(num,small);
}
println(small);

//find index of smallest number
int index = 0;
for(int num : nums){
  if(num < nums[index]){       //impossible since the for each statement does not always output the values in the correct order
    index++;
  }
}
println(index);