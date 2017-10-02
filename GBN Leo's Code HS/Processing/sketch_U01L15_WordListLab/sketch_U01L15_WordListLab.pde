void setup() {
  //Palindrome();
  //AllVowelsWords();
  Isogram();
}

int letterCount(String target, String letter) {
  int count = 0;
  for (int i = 0; i < target.length(); i++) {
    if ( target.substring(i, i+1).equals(letter) ) {
      count++;
    }
  }
  return count;
}

public String reverseString(String str) {
  String result = "";
  for (int i = str.length()-1; i >= 0; i--) {
    result += str.substring(i, i+1);
  }
  return result;
}

void Palindrome() {
  String[] words = loadStrings("WordList.txt");
  int count = 0;
  for (int i = 0; i < words.length; i++) {
    if (reverseString(words[i]).equals(words[i])) {
      count++;
      println(count + ". " + words[i]);
    }
  }
}

void AllVowelsWords() {
  String[] words = loadStrings("WordList.txt");
  String vowela = "a";
  String vowele = "e";
  String vowelu = "u";
  String voweli = "i";
  String vowelo = "o";
  int count = 0;
  for (int i = 0; i < words.length; i++) {
    if (words[i].contains(vowela) && words[i].contains(vowele) && words[i].contains(vowelu) && words[i].contains(voweli) && words[i].contains(vowelo)) {
      count ++;
      println(count + ". " + words[i]);
    }
  }
}

void Isogram() {
  String[] words = loadStrings("WordList.txt");
  StringBuilder sb = new StringBuilder(1);
  int count = 0;
  for (int i = 0; i < words.length; i++) {
    char[] ltrs = words[i].toCharArray();
    int ltrcount = 0;
    for (int j = 0; j < words[i].length(); j++) {
      String ltr = String.valueOf(ltrs[j]);
      sb.append(ltr);
      sb.replace(0, sb.length(), ltr);
      ltrcount += letterCount(words[i], sb.toString());
    }
    if (ltrcount == words[i].length()) {
      count++;
      println(count + ". " + words[i]);
    }
  }
}