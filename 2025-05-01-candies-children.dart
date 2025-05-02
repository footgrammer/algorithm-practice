List<bool> Solution(List<int> candies, int extraCandies) {
  int maxCandy = 0;
  for (int candy in candies) {
    if (candy > maxCandy) maxCandy = candy;
  }
  // maxCandy = candies.reduce(a, b => a > b ? a : b)
  List<bool> possibilityList = [];
  for (int candy in candies) {
    if ((candy + extraCandies) >= maxCandy) {
      possibilityList.add(true);
    } else {
      possibilityList.add(false);
    }
  }

  // camdies.map((candy) => candy + extraCandies >= maxCandies).toList()

  return possibilityList;
}

void main() {
  List<int> candies = [2, 3, 5, 4, 6];
  int extraCandies = 3;
  print(Solution(candies, extraCandies));
}
