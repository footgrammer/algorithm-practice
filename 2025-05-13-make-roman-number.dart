import 'dart:math';

String MakeRomanNumber(int number) {
  String romanNumber = '';

  List<String> symbols = [
    'I',
    'IV',
    'V',
    'IX',
    'X',
    'XL',
    'L',
    'XC',
    'C',
    'CD',
    'D',
    'CM',
    'M',
  ];

  List<int> numbers = [1, 4, 5, 9, 10, 40, 50, 90, 100, 400, 500, 900, 1000];

  for (int i = 0; i < symbols.length; i++) {
    while (number >= numbers[symbols.length - (1 + i)]) {
      number -= numbers[symbols.length - (1 + i)];
      romanNumber += symbols[symbols.length - (1 + i)];
    }
  }

  print(romanNumber);
  return romanNumber;
}

void main() {
  MakeRomanNumber(3749);
  MakeRomanNumber(58);
}
