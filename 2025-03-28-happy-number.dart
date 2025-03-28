class Solution {
  bool isHappy(int n) {
    Set<int> seen = {};

    while (n != 1 && !seen.contains(n)) {
      seen.add(n);
      n = getSquareNum(n); // 제곱의 합 구하기
    }

    return n == 1;
  }

  int getSquareNum(int num) {
    int sum = 0;
    while (num > 0) {
      int digit = num % 10;
      sum += digit * digit;
      num = num ~/ 10;
    }
    return sum;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.isHappy(19));
}
