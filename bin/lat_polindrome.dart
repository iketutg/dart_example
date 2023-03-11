void main(){

   String word1 = "malam";
  String word2 = "kodok";
  String word3 = "pagi";

  print(
      "$word1 adalah ${isPalindrome(word1) ? "palindrom" : "bukan palindrom"}");
  print(
      "$word2 adalah ${isPalindrome(word2) ? "palindrom" : "bukan palindrom"}");
  print(
      "$word3 adalah ${isPalindrome(word3) ? "palindrom" : "bukan palindrom"}");
}

bool isPalindrome(String word) {
  int left = 0;
  int right = word.length - 1;

  while (left < right) {
    if (word[left] != word[right]) {
      return false;
    }

    left++;
    right--;
  }

  return true;
}


bool isPalindromeRekusif(String word) {
  if (word.length <= 1) {
    return true;
  }

  if (word[0] != word[word.length - 1]) {
    return false;
  }

  return isPalindromeRekusif(word.substring(1, word.length - 1));
}
