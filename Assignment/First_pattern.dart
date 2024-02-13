void main() {
  // Firsrt half
  // Blank String
  String star = '';
  int i = 0;
  // Outer   Loop
  while (i < 5) {
    int j = 0;
    // Inner Loop
    while (j <= (i / 2)) {
      star += '*';
      j++;
    }
    // For Second Row
    if (i == 1) {
      print("***");
    } else {
      print(star);
    }
    i++;
  }

  // For Second Half
  // Define the number of rows
  int y = 4;
  String str = '';
  int r = 0;
  // Loop through each row
  while (y >= 0) {
    int j = 1;
    // Print asterisks based on the current row
    while (j <= y * 2 - 1) {
      j++;
      str += '*';
    }
    // Print The String 
    print(str);
    str = '';
    y--;
  }
}
