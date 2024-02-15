void main() {
  Map<String, List<String>> exapmple = {
    '1': ['a', 'b'],
    '2': ['c', 'd']
  };
  createCombinations(exapmple);
}

void createCombinations(Map<String, List<String>> data) {
  List<List<String>> values = data.values.toList();
  // print(keyValues[0]);
  // Lenth 2
// 00 - Print a
// 01 - Print b
// 10 - Print c
// 11 - Print d
  for (int i = 0; i < values[0].length; i++) {
    for (int j = 0; j < values[1].length; j++) {
      print('${values[0][i]}${values[1][j]}');
    }
  }
}
