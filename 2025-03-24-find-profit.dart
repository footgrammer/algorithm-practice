import 'dart:math';

class Solution {
  int maxProfit(List<int> prices) {
    int minPrice = double.maxFinite.toInt(); // 최대값으로 초기화
    int maxProfit = 0; // 최대 이익 초기화

    for (int price in prices) {
      if (price < minPrice) {
        minPrice = price; // 최소 가격 업데이트
      } else {
        maxProfit = max(maxProfit, price - minPrice); // 최대 이익 계산
      }
    }

    return maxProfit;
  }
}

void main() {
  List<int> prices = [7, 1, 5, 3, 6, 4];
  Solution solution = Solution();
  solution.maxProfit(prices);
}
