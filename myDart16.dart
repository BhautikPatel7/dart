void main(){
  Cat cat = Cat();
  cat.makingSound();
  Dog dog = Dog();
 dog.makingSound();
    
}
class Animal {
  void makingSound(){
    print("Animal Making Sound");
  }
}

class Cat extends Animal {
  @override
  void makingSound(){
    print("Cat Is making sound haha");
  }
}
class Dog extends Animal {
  @override
  void makingSound(){
    print("Dog Is making sound nhanha");
  }
}