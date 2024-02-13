
void main() {
  // Store to Value Of j and k
  int d = 0;
   int x = 0;
  // Print One Line in Dart Pad for Blank String
  String str = '';
  String firstOnePrint = '';
//  First Loop Go Still 8 line 
  for (int i = 0; i <= 7; i++) {
    // Before Diagonal Printing Revrse Number
    for (int k = i; k >= 1; k--) {
      // Stroing K To X Bcz Of Concrating Sring
      x = k;
      String ConvertingXtoString = x.toString();
      // making String Value To Print In dartpad
      firstOnePrint += ConvertingXtoString;
      // stdout.write(k); iTs Alternative Of All This
    }

    // After Diagonal Part
    for (int j = 0; j <= 7 - i; j++) {
      d = j;

      String printOneLine = d.toString();

      str += printOneLine;
    }

    // Print both strings on the same line
    print('$firstOnePrint$str');

    // Clear strings for the next iteration
    str = '';
    firstOnePrint = '';
  }
}
