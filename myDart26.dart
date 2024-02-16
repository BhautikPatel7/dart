void main() {
  var list = [1,2,3,4];
  var [a,_,c,...d] = list;
  print('$a,$c,$d');

  final json = {
    "fruit": "Apple",
    "size": "Large",
    "color": "Red"
};
  
  if(json case  {"fruit": String fr,"color": String clr }  ){
      print('$fr, $clr');
  }
  else{
    print("In Correct Json");
  }
//   print(json['fruit']);
  
 switch(json){
   case {"fruit": String fr,"color": String clr }:
     
 }
}
