void main() {
  // Taking 3 Blank String For Dart Pad 

  // First String Store Blank Space Of Pattern
  String firststring = '';
  // Second Blank String For First Half
  String secondstring = '';
  // Third Blank String For Second Half
  String thirdstring = '';
  // From 65 Ascii value Of Character Start And Use For fromCharCode method
  int alphabet = 65;
  // Main loop For Itrestion  
  for (int i = 0; i <= 6; i++) {

    // For Spacing 
    for (int d = 6; d >= i; d--) {
      // stdout.write(' ');
    }
    // For Storing Value Of Blank Space To First String
    for (var b = 4; b >= i-1; b--) {
      firststring += ' ';
    }
    // First Part Of Pattern
    for (int k = 0; k <= i - 1; k++) {
      // stdout.write('${String.fromCharCode(alphabet + k)}');
      // Taking Output As A String
      secondstring += String.fromCharCode(alphabet+k);
      
    }

      // Second Part Of Pattern
    for (int j = i; j >= 0; j--) {
      // stdout.write('${String.fromCharCode(alphabet + j)}');
      // Taking Output As A String
      thirdstring += String.fromCharCode(alphabet + j);
    }

    //  Printing For Each Itreation
    print(' $firststring$secondstring$thirdstring ');
    // making Value Blank for Next Iteration
    firststring = '';
    secondstring = '';
    thirdstring = '';
  }
}
