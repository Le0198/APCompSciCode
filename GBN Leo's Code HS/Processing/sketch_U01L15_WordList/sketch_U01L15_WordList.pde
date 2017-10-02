String[] words = loadStrings("WordList.txt");
//int count = 0;
String longword = "";
for (int i = 0; i < words.length; i++) {
  //println( (i+1) + ". " + words[i] );
  /*if(words[i].length() < 3){
   count++;
   println(count + " " + words[i]);
   }
   }*/
  if (longword.length() < words[i].length()) {
    longword = words[i] ;
    //println(count + ". " + words[i]);
  }
}
println(longword);
//println(count);