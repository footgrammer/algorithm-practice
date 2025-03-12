class Solution {
  int romanToInt(String s) {
    List<String> romans = s.split('');
    int sum = 0;
    Map<String, int> romanMap = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };

    for (int i = 0; i < romans.length; i++) {
      if (i + 1 < romans.length &&
          romanMap[romans[i]]! < romanMap[romans[i + 1]]!) {
        sum -= romanMap[romans[i]]!;
      } else {
        sum += romanMap[romans[i]]!;
      }
    }
    return sum;
  }
}

main() {
  Solution solution = Solution();
  print(solution.romanToInt("III"));
  print(solution.romanToInt("LVIII"));
  print(solution.romanToInt("MCMXCIV"));
}
