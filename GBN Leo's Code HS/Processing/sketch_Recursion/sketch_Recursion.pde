void setup() {
  //int result = factorial(10);
  //int sum = sumUp(5);
  int eyes = countEyes(12);
  //println(result);
  //println(sum);
  println(eyes);
}

int factorial(int num){
  //Base Case (when to exit the recursive loop)
  if(num == 1){
    return 1;
  }
  //Reduction Step and Recursive Call
  println("Calling " + num + " x " + (num-1) + "!" );
  return(num*factorial(num-1));
}

int sumUp(int n){
  if(n == 1){
    return 1;
  }
  return(n+sumUp(n-1));
}

int countEyes(int people){
  if(people == 1){
    return 2;
  }
  return(2 + countEyes(people - 1));
}