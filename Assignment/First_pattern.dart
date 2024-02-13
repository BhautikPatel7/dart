void main() {
  var star = '';
  int i = 0;
  while (i < 5) {
    int j = 0;
    while (j <= (i / 2)) {
      star += '*';
      j++;
    }
    if (i == 1) {
      print("***");
    } else {
      print(star);
    }
    i++;
  }
}
