  void main() async{
//   Streams
// print(await countDown().first);
  countDown().listen((val) {
    print(val);
    
  });
}

 Stream <int> countDown() async*{
  for(int i = 0; i <= i+1; i++){
    yield i;
    await Future.delayed(Duration(seconds : 1));
  }
}
