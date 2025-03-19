class Solution {
  int lengthOfLastWord(String s) {
    List<String> words = s.trim().split(' ');
    return words.last.length;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.lengthOfLastWord("Hello World")); // 5
  print(solution.lengthOfLastWord("a ")); // 1
  print(solution.lengthOfLastWord("")); // 0
}
