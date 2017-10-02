/*String[] students = {"Bart", "Milhouse", "Nelson", "Sherri", "Terri", "Martin", "Wendell", "Sophie"}; //<>//
 println("ROSTER");
 for(int i = 0; i < students.length; i++){
 println((i+1) + ".) " + students[i]);
 }*/

/*float[][] matrix = {  {1.1, 1.2, 1.3, 1.4}, {2.1, 2.2, 2.3, 2.4}, {3.1, 3.2, 3.3, 3.4}  };
 
 for(int i = 0; i < matrix.length; i++){
 for(int j = 0; j < matrix[i].length; j++){
 if(j < matrix[i].length - 1){
 print( matrix[i][j] + ", ");
 } else {
 print( matrix[i][j] );
 }
 }
 println();
 }
 
 //println(matrix.length);
 //println(matrix[0].length);\
 */

/*String[][] seatingChart= {  {"Sherri", "Terri"}, {"Nelson", "Martin"}, {"Bart", "Milhouse"}, {"Wendell", "Sophie"} };
 for (int i = 0; i < seatingChart.length; i++) {
 for (int j = 0; j < seatingChart[i].length; j++) {
 //print(seatingChart[i][j] + " ");
 //print(seatingChart[2][j] + " ");
 }
 //println(seatingChart[i][1]);
 }*/

int[][] nums = { {3, 4, 9, 1, 12}, {11, 6, 3, 8, 0}, {6, 1, 3, 14, 12}, {2, 1, 2, 3, 2}, {4, 6, 1, 7, 8} };
int sum = 0;
for (int i = 0; i < nums.length; i+=2) {
  for (int j = 0; j < nums[i].length; j++) {
    /*if (j < nums[i].length - 1) {
     print(nums[i][j] + ", ");
     } else { 
     print(nums[i][j]);*/
    sum += nums[i][j];
  }
}
println(sum);