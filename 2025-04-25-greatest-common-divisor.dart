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

// 해설
String gcdOfStrings(String str1, String str2) {
  // 두 문자열을 이어 붙였을 때 결과가 같지 않으면 공통 문자열이 없음
  if (str1 + str2 != str2 + str1) {
    return '';
  }

  // 두 문자열 길이의 최대 공약수를 구함
  int gcd(int a, int b) {
    return b == 0 ? a : gcd(b, a % b);
  }

  // str1과 str2의 길이의 최대 공약수 만큼 문자열의 앞부분을 반환
  int gcdLength = gcd(str1.length, str2.length);
  return str1.substring(0, gcdLength);
}

void main() {
  String s = 'ABABAB';
  String t = 'ABAB';
  print(findGreatestDivisor(s, t));
}
