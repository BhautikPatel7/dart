void main() {
  int n = 5; // Number of lines in the pattern

  // Print the upper half of the pattern
  for (int i = 1; i <= n; i++) {
    String line = '';
    for (int j = 1; j <= i; j++) {
      line += '*';
    }
    print(line); // Move to the next line
  }

  // Print the lower half of the pattern
  for (int i = n - 1; i >= 1; i--) {
    String line = '';
    for (int j = 1; j <= i; j++) {
      line += '*';
    }
    print(line); // Move to the next line
  }
}