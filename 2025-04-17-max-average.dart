import 'dart:math';

double findMaxAverage(List<int> nums, int k) {
  int sum = 0;

  // 첫 번째 k개의 요소 합 계산
  for (int i = 0; i < k; i++) {
    sum += nums[i];
  }

  int maxSum = sum;

  // 슬라이딩 윈도우를 사용하여 최대 합 계산
  for (int i = k; i < nums.length; i++) {
    sum = sum - nums[i - k] + nums[i];
    maxSum = max(maxSum, sum);
  }

  return maxSum / k;
}

void main() {
  print(findMaxAverage([1, 12, -5, -6, 50, 3], 4));
}
