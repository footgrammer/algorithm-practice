class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    for (int i = m; i < m + n; i++) {
      nums1[i] = nums2[i - n];
    }
    nums1.sort();
  }
}

void main() {
  var nums1 = [1, 2, 3, 0, 0, 0];
  var nums2 = [2, 5, 6];
  var m = 3;
  var n = 3;
  Solution().merge(nums1, m, nums2, n);
}
