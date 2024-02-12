import 'dart:io';

void main() {
  int age = 1;
  if (age >= 18) {
    print("adult");
  }

  else{
    print("child");
  }

  String str = '';
  if (!str.isEmpty) {
    print("haha");
  }
  else{
    print("asfhjas");
  }

  // ----------------------------------

//  Ternary Operator
  String value = 'yyyasdg1';

  String c = value.startsWith('y')?'Wow':'nahh';
  print(c);

  switch (value) {
    case 'yyyasdg':
    print("swich Works1");
    case 'yyyasdg1':
    print("swich Works2");
    case 'yyyasdg':
    print("swich Works3");
    default:
    print("swich Works4");

  }

  print("ENter 3 Letter Caital Word");
  String? destination = stdin.readLineSync();


  double weightInKgs = 6;
  double cost = 0;

  if (destination == 'PQR' ) {
    cost = 10 * weightInKgs;
    
  }
  else if(destination == 'ABC'){
    cost = 7 * weightInKgs;
   
  }
    else if(destination == 'XYZ'){
    cost = 5 * weightInKgs;
   
  }
  else{
    print("You Are Out Of Destination Area");
    return;
  }
  print('Shipping Cost: $cost');

  switch (destination) {
    case 'PQR':
      print('Shipping Cost is: ${weightInKgs * 10}');
    case 'ABC':
      print('Shipping Cost is: ${weightInKgs * 7}');
    case 'XYZ':
      print('Shipping Cost is: ${weightInKgs * 5}');
    default:
      print('Invalid Amount');
  }
}
