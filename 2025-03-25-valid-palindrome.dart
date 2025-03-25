class Solution {
  bool isPalindrome(String s) {
    String result = s.replaceAll(RegExp('[^a-zA-Z]'), "").toLowerCase();

    String reverseResult = result.split('').reversed.join();

    if (result == reverseResult) {
      return true;
    } else {
      return false;
    }
  }
}

void main() {
  Solution solution = Solution();

  print(solution.isPalindrome("A man, a plan, a canal: Panama"));
  print(solution.isPalindrome("race a car"));
}
