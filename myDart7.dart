void main() {
  //------------------------------
  // named Argument and positional Arguments
  // ---------------------------------------------------
  // Function
  // printName();
//   strName();
//  int name = strName();
//  print(name);
// print(printName());
// var name = printName();
// print(name.$1.runtimeType);
// print(name.$2.runtimeType);
// printName(17,false, name: 'Bhautik', greeting: "hello Java");
//   final stuff = printStuff();
//   print(stuff.age);
//   print(stuff.name);

final stuff = printStuff();
  print(stuff());
 }
// // void printName(){
//   print('hyy');
// }

// dynamic strName(){
//   return 1;
// }
// (int,String) printName(){
//   return (12, 'Hyy');
// }/

// void printName(int  age, bool isAdult,{required  String name,required String greeting}){
//   print(name);
//   print(age);
//   print(greeting);
//   print(isAdult);
// }

// ({int age, String name}) printStuff() {
//   return (age: 12, name: 'hyy');
// }

Function printStuff(){
  return (){
    print('yooo');
  };
}
