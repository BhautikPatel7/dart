import 'dart:io';

void main(List<String> args) {

  print('enter number');
  int n = int.parse(stdin.readLineSync()!);

  for(int i =1; i<=n; i++){
    for(int j =1; j<=(4*n)+1;j++){
      if(((n+1)-i<=j && (n+1)+i>=j) || ((3*n)-i<=j && (3*n)+i >=j)){
        stdout.write('*');
      }
      else{
          stdout.write(' ');
      }
    }
   print('');
  }
  
  for (int i=(2*n)+1; i>=1;--i){
    for(int j=1; j<=(2*n)+1 - i;j++){
      stdout.write(' ');
    }
    for(int k=1;k<=2*i -1;k++){
      stdout.write('*');
    }

     print('');
  }

  
}