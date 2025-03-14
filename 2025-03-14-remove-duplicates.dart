class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) {
      return 0;
    }
    int k = 1;

    for (int i = 1; i < nums.length; i++) {
      if (nums[i] != nums[k - 1]) {
        nums[k] = nums[i];
        k++;
      }
    }
    return k;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.removeDuplicates([1, 1, 2]));
  print(solution.removeDuplicates([0, 0, 1, 1, 1, 2, 2, 3, 3, 4]));
}
