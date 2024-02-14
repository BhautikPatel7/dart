import 'dart:io';

void main(){
  int starcount = 0;
  bool flag =  true;
  for(int i = 0; i <= 5; i++){
    for(int j = 1; j <= i+1; j++){
      if (i == 2 || i == 1) {
        j += 2;
       
      }
      else{
      if(flag){
        j = j+1;
        flag = false;
      }
      }
      

       stdout.write(j);
    }
    print(' ');
  }

}