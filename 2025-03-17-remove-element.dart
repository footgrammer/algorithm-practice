class Solution {
  int removeElement(List<int> nums, int val) {
    int k = 0; // val이 아닌 요소의 개수를 셀 포인터

    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != val) {
        nums[k] = nums[i]; // val이 아닌 요소를 k 위치에 배치
        k++; // 다음 위치로 이동
      }
    }

    return k; // val이 아닌 요소의 개수를 반환
  }
}

void main() {
  Solution solution = Solution();
  print(solution.removeElement([3, 2, 2, 3], 3)); // 2
  print(solution.removeElement([0, 1, 2, 2, 3, 0, 4, 2], 2)); // 5
}
