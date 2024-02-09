import 'dart:io';

void main(){
      print("Welcome to Dart");
      stdout.write("enter Your name");
      var s = stdin.readLineSync();
      print("welcome $s");
     var me =   Human();

    // Variable Declaration

        int hy = 12;
        print(hy);
        int? a;
        print(a);




        BigInt longValue ;
        longValue  = BigInt.parse('56454874897468');
        stdout.write(longValue);

        num d = 10.36545;
        bool isChek = true;
        stdout.write(isChek);


}
class Human {
  Human(){
    print("Constrcuter Is Called");
  }
}