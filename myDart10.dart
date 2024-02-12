import 'dart:ffi';

void main(){
  final cookie = Cookie('tringle',12);
  print(cookie.Shape);
  print(cookie.size);
  
  
}
class Cookie {
String Shape;
  double size;
  Cookie(this.Shape, this.size){
    print(this);
    print('Cookie Constructor is Called');
    baking();
  }


  
  void baking(){
    print('Cookie Is baking');
  }

  bool isCooling(){
    return true;
  }
}