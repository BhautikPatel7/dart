void main() {
Vehical car = Car();
  car.accelerate();

  
  
  
  
}
class OtherClass{
  bool engineworks = false;
  bool islighton = true;
  int noofWheel = 12;
}

class Vehical {
  void accelerate(){
    print("Accelearating");
  }
}


class Car extends OtherClass implements Vehical {
  @override
  void accelerate(){
    print(engineworks);
      print(islighton);
      print(noofWheel);
  }
}
class Truck implements Vehical {
 @override 
  bool engineworks = true;
  
  @override
  bool islighton = false;
    @override
  int noofWheel = 6; 
  @override
  void accelerate(){
    print("Accelearating Truck");
  }
}

