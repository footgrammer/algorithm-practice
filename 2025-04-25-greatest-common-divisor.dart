String findGreatestDivisor(String s, String t) {
  int sLength = s.length;
  int tLength = t.length;
  String commonDivisor = "";
  // 합친 값이 다르다면
  if (s + t != t + s) {
    commonDivisor = "";
  } else {
    for (int i = 0; i < tLength; i++) {
      if (s[i] == t[i]) {
        commonDivisor += s[i];
      }
    }
    print(commonDivisor);
    if (sLength % commonDivisor.length != 0) {
      String divisor = '';
      for (int i = 0; i < commonDivisor.length; i++) {
        divisor = commonDivisor.substring(0, i + 1);
        if (divisor == commonDivisor.substring(i + 1, divisor.length + 2)) {
          commonDivisor = divisor;
        }
      }
    }
  }

  return commonDivisor;
}

void main() {
  String s = 'ABABAB';
  String t = 'ABAB';
  print(findGreatestDivisor(s, t));
}
