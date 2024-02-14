import 'dart:io';

class StarPatt {
  final int numLines;

  StarPatt(this.numLines);

  void Dynamic() {
    for (int i = 1; i <= numLines; i++) {
      print('*' * i);
    }

    for (int i = numLines - 1; i >= 1; i--) {
      print('*' * i);
    }
  }
}

void main() {
 
  stdout.write('Enternumber ');
  var numLines = int.parse(stdin.readLineSync()!);


  var starPattern = StarPatt(numLines);
  starPattern.Dynamic();
}