bool isAnagram(String s, String t) {
  // 두 문자열의 길이가 다르면 애너그램이 아님
  if (s.length != t.length) return false;

  // 각 문자열의 문자를 정렬한 후 비교
  List<String> sortedS = s.split('')..sort();
  List<String> sortedT = t.split('')..sort();

  return sortedS.join() == sortedT.join();
}

void main() {
  String s = "anagram";
  String t = "nagaram";
  print(isAnagram(s, t));
}
