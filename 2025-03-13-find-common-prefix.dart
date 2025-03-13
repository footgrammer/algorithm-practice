class Solution {
  String longestCommonPrefix(List<String> strs) {
    String prefix = "";
    String solutionStr = "";
    if (strs.isEmpty) {
      return solutionStr;
    }
    List<String> firstStr = strs[0].split("");
    for (int i = 0; i < firstStr.length; i++) {
      prefix = firstStr[i];

      if (strs.every((samePrefix) => samePrefix.startsWith(prefix, i))) {
        solutionStr += prefix;
      } else {
        break;
      }
    }
    return solutionStr;
  }
}

main() {
  Solution solution = Solution();
  print(solution.longestCommonPrefix([]));
  print(solution.longestCommonPrefix(["flower", "flow", "flight"]));
  print(solution.longestCommonPrefix(["dog", "racecar", "car"]));
}
