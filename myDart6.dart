import 'dart:io';

void main(){
  // Loops!
  // for (int i = 0; i < 10; i++) {
  //   String hii= "Hello Word";
  //   print(hii.substring(0,5));
  //   print("hhy ${i+1}");
  // }

  String str  = "Hello";
  for (var i = 0; i < str.length; i++) {
    if (i == 1  || i==2 || i==3) {
      break;
    }
      print(str[i]);
  }

  // int i = 0;
  // while (i < str.length) {
  //   print(str[i]);
  //   i++;
  // }

  // Do While loop
  // do {
  //   print(str[i]);
  //   i++;
  // } while (i != i );
  
}