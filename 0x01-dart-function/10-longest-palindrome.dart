bool isPalindrome(String s) {
  if (s.length < 3) return false;
  return s == s.split('').reversed.join('');
}

String longestPalindrome(String s) {
  String longest = "";

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 3; j <= s.length; j++) {
      String sub = s.substring(i, j);
      if (isPalindrome(sub) && sub.length > longest.length) {
        longest = sub;
      }
    }
  }

  return longest.isEmpty ? "none" : longest;
}