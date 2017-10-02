/*int[] grades =  {82, 97, 72, 77, 89};
 double total = 0;
 for (int i = 0; i < grades.length; i++) {
 total += grades[i];
 }
 double avg = total / grades.length;
 print(avg);
 
/*for (int i = 0; i < grades.length; i++) {
 if (grades[i] < 80) {
 grades[i] += 5 ;
 } else {
 grades[i] += 2 ;
 }
 print( grades[i] );
 if ( i < grades.length-1 ) {
 print( ", " );
 }
 }*/

int[] grades =  {153, 242, 46, 98, 25, 312};
int min = Integer.MAX_VALUE;

for (int i = 1; i < grades.length; i++) {

  if (min > grades[i]) {
    min = grades[i];
  }
}

println(min);