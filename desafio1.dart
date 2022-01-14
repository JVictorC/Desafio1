int numberDivisibleBy3or5(int numberForAnalysis) {
  final List<int> numbersValid = [];
  for (int index = 0; index < numberForAnalysis; index++) {
    final validations = [
      index % 3 == 0,
      index % 5 == 0,
    ];
    if (validations.contains(true)) numbersValid.add(index);
  }
  return numbersValid.reduce((acc, value) => acc += value);
}

void main(List<String> args) {
  print(numberDivisibleBy3or5(10));
}
