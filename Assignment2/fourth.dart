void main() {
  String str = 'plusinfosys';
  List list = [];
  
  for (var i = 0; i < str.length; i++) {
    list.add(str[i]);
  }
  
  print(list);
  
  List countList = [];
  
  for (int i = 0; i < list.length; i++) {
    int count = 1; // Initialize count for each character
    for (var j = i + 1; j < list.length; j++) {
      if (list[i] == list[j]) {
        count++; // Increment count if character is repeated
      }
    }
    countList.add(count); // Add count for this character to the countList
  }

  print(countList);
}
