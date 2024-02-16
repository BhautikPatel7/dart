void main() {
 HUman human = HUman('myname', '21');
  
  final HUman(:name,:age) = human;
  print(name);
  print(age);

  List <String> name1 = ['hyy', 'myname'];
  
  
  int index = 1;
  switch(name1){
    case ['hyy' || 'HYY', 'myname' || 'mynamE'] when index == 2:
      print("Dude !!");
      defult :
      print('bruh');
  }

  int page = 0;
  int? lastpage ;
  
  final text = switch(lastpage){
      0 => 'Click Here',
         1 => 'Click Here Two times',
         _ => 'Click Here Three Times'
  };
  
  print(text);
}

class HUman{
  final String name;
  final String age;
  
  HUman(this.name, this.age);
}