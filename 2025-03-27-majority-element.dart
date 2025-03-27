class Solution {
  int majorityElement(List<int> nums) {
    int count = 0;
    int element = -1;
    int theMostCount = 0;
    for (int num in nums) {
      count = nums.where((selectedNum) => selectedNum == num).length;

      if (count > theMostCount) {
        theMostCount = count;
        element = num;
      }
    }
    print(element);
    return element;
  }
}

void main() {
  List<int> nums = [3, 2, 3];
  Solution solution = Solution();
  solution.majorityElement(nums);
  nums = [2, 2, 1, 1, 1, 2, 2];
  solution.majorityElement(nums);
}
