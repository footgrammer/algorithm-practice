class Solution {
  int singleNumber(List<int> nums) {
    int result = 0;
    for (int num in nums) {
      result ^= num;
    }
    return result;
  }
}

void main() {
  Solution solution = Solution();
  List<int> nums = [2, 2, 1];
  solution.singleNumber(nums);
  nums = [4, 1, 2, 1, 2];
  solution.singleNumber(nums);
}

// 비트 연산자를 두 번 하면 원래 숫자로 돌아감.
// 0000 ^ 0100 = 0100 : 4
// 0100 ^ 0001 = 0101 : 5
// 0101 ^ 0010 = 0111 : 7
// 0111 ^ 0001 = 0110 : 6
// 0110 ^ 0010 = 0100 : 4
