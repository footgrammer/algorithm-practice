List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
  Set<int> set1 = nums1.toSet();
  Set<int> set2 = nums2.toSet();

  List<int> answer1 = set1.difference(set2).toList();
  List<int> answer2 = set2.difference(set1).toList();
  return [answer1, answer2];
}

void main() {
  List<int> nums1 = [1, 2, 3, 4];
  List<int> nums2 = [3, 4, 5, 6];
  print(findDifference(nums1, nums2));
}
