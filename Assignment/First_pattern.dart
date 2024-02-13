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
  
  // Loop through each row
  while (y >= 0) {
    int j = 1;
    // Print asterisks based on the current row
    while (j <= y * 2 - 1) {
      // Check if it's row three or four, then adjust the condition
      if (y == 3 || y == 4) {
        if (j != y * 2 - 1) {
          str += '*';
        }
      } else {
        str += '*';
      }
      j++;
    }
    // Print the string
    print(str);
    // Reset the string for the next row
    str = '';
    y--;
  }
}
