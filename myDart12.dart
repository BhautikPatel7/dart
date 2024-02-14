void main(){
  final cookie = Cookie( shape: 'tringle', size: 10);
  print(cookie.shape);
  print(cookie.height);
  cookie.setHeight = 50;
  print(cookie.height);

}
class Cookie {
 final String? shape ;
 final double? size;
  Cookie( {required this.shape, required this.size}){
//   Private Varible Define Using _varname
//   baking();
  }
  int _height = 10; 
  int _width = 10;
//   Getter
  int get height =>_height;
  
//   Setter
  
    
set setHeight(int h){
  _height = h;
}
//   Methods
//   Change The Hieght
  void modifyHeight(int h){
    _height = h;
  }
  
//   CalCulate Size Of Cookie
  int calculateSize(){
    return _height*_width;
  }
  void baking(){
  print('Your Cookie is $shape and $size Cm');
  }

  bool isCooling(){
    return true;
  }
}