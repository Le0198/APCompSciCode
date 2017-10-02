void setup() {
  println(reverseString("ReverseReverse"));
  println(mixString("Mix it up!"));
}

public String reverseString(String str) {
  String result = "";
  for (int i = str.length()-1; i >= 0; i--) {
    result += str.substring(i, i+1);
  }
  return result;
}

public String mixString(String str) {
  String mixedstr = "";
  char[] ltrs = str.toCharArray();
  StringBuilder sb = new StringBuilder();
  sb.append(str);
  for (int i = str.length()-1; i >= 0; i--) {
    int index = int(random(ltrs.length));
    sb.deleteCharAt(index); 
    mixedstr += ltrs[index];
    ltrs = sb.toString().toCharArray();
  }
  return mixedstr;
}