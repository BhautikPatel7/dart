// camelCase
import 'dart:ffi';
import 'dart:io';

void main(){
  // print(Cookie().Shape);
  // print("${Cookie().size}cm");
  final cookie = Cookie();
  // print(cookie.Shape);
  // cookie.baking();
  // final isCookieCooling = cookie.isCooling();
  // print(isCookieCooling);

  cookie.Shape = 'Rectangle';
  // print(cookie.Shape);
  cookie.size = 32;
}
// PascalCase
class  Cookie{
      // Variable
      String Shape =  'circle';
      double size = 52; //cm

      // Method
      void baking(){
        print("Baking Is Started");
      }

      bool isCooling(){
        return false ;
      }
}