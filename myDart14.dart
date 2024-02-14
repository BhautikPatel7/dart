// Inheritance
void main() {
Vehical car = Car();
//   print((car as Car).noofWheel);
//   print(car.engineworks);
//   print(car.greeting);
  
//   Truck truck = Truck();
//   print(truck.noofWheel);
  
//   dynamic something = 30;
//   print((something as int).isEven);
  car.accelarate();
  print(car.speed);
}
class SomeClass{
  final String greeting = 'Hey! Lets Ride ';
   int speed = 10;
  
   void accelarate(){
    speed += 90;
  }
}
class Vehical extends SomeClass{
 
  bool engineworks = false;
  bool islighton = true;
//   @override
  void accelarate(){
    speed += 100;
  }
}
class Vehical2{
 
  bool engineworks = true;
  bool islighton = false;
  int speed = 4;
  void accelarate(){
    speed += 40;
  }
}

class Car extends Vehical {
 int noofWheel = 4;
  void printSomething(){
    print(noofWheel);
  }
}
class Truck extends Vehical {
 int noofWheel = 10;
  void printSomething(){
    print(noofWheel);
  }
}
