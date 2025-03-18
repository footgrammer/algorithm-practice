class Solution {
  int strStr(String haystack, String needle) {
    return haystack.indexOf(needle);
  }
}

void main() {
  Solution solution = Solution();
  print(solution.strStr("hello", "lo")); // 3
  print(solution.strStr("aaaaa", "bba")); // -1
  print(solution.strStr("", "")); // 0
}
