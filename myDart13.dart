void main(){
//   Constants constants =  Constants();
//   print(constants.greeting);
//    print(constants.bye);
  print(Constants.greeting);
  print(Constants.bye);
  print(Constants.gaveMeSomeValue());
}


class Constants{
  static String greeting = 'Hello, How Are You?';
  static String bye = 'Bye!';
  
  static int gaveMeSomeValue(){
      return 10;
  }
}