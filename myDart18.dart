import 'dart:ffi';

void main() {
  Animal anim = Cat();
  switch(anim){
    case Dog():
      print('dog');
      case Cat():
      print('cat');
      case Human():
      print('Human');
  }
}

sealed class Animal{
  
}
base class animal2{}
final class animal3{}
interface class animal24{}

class Human implements Animal{}

class Dog implements Animal{}
class Cat extends Animal{}
mixin class animak{}