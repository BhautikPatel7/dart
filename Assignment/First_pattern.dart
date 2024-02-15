void main() {
  // How many patterns we want to print
  int rowCount = 4;
  // i == -1 because of printing 1 star on the first line
  int i = -1;
  
  // First half of the pattern (increasing star count)
  while (i < rowCount) {
    // For first star
    if (i == -1) {
      print("*");
    } else {
      // Increasing star count by 1, 2, 3, 5, 8
      int starCount = 3 + i * (i + 1) ~/ 2;
      // For storing value
      String row = '';
      int j = 0;
      while (j < starCount) {
        row += '*';
        j++;
      }
      print(row);
    }
    i++;
  }
  
  // Second half of the pattern (decreasing star count)
  // Start With 2
  i = rowCount - 2;
  while (i >= -1) {
    if (i == -1) {
      print("*");
    } else {
      int starCount = 3 + i * (i + 1) ~/ 2;
      String row = '';
      int j = 0;
      while (j < starCount) {
        row += '*';
        j++;
      }
      print(row);
    }
    i--;
  }
}
