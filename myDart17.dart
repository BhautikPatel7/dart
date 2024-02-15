void main() {
 final anim = Animal();
  anim.jumpani();
  Cat cat = Cat();
  cat.dun();
    
}

mixin jump {
  int jumping = 10;
}
mixin Screaming {
  bool isCreaming = false;
}
class Animal with jump , Screaming{
  void jumpani(){
    print(jumping);
  }
}

class Cat extends Animal{
  void dun(){
    print("jumping cat");
  }
}