void main() {
  var star = '';
  for (int i = 0; i < 5; i++) {
   for(int j =0; j <= (i/2) ; j++){
        star += '*'; 
   }  if(i == 1){
       print("***");
     }
    else{
      print(star);
    }
  }
}
