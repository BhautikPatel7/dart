void main() {
print(10 ~/ 3);
//   10/3 = 3.333 , => 3
  print(10 / 0);
  try{
     print(10 ~/ 0);
  }
  catch(e){
    print('Some Thing Should be Print');
  }finally{
    print('Final Block Excecuted');
  }
  print('myname');
}
