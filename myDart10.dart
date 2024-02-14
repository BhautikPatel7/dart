void main(){
  final cookie = Cookie( shape: 'tringle', size: 10);
//   print(cookie.shape);
//   print(cookie.size);
//   cookie.shape = 'gol'; cant Change Due to Final
//     print(cookie.shape);
}
class Cookie {
 final String? shape ;
 final double? size;
  Cookie( {required this.shape, required this.size}){
//     print(this.shape);
//     this.shape = shape;
//     this.size = size;
//     print('Cookie Constructor is Called');
//     this.baking();
  baking();
  }
  
  void baking(){
  print('Your Cookie is $shape and $size Cm');
  }

  bool isCooling(){
    return true;
  }
}