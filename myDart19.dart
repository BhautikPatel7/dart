void main() {
// Start With Lists
  List list =[
    Student('Rivvan'),
     Student('Rivv'),
     Student('Ri'),
    'Hyy',
    8,
    true
  ];
//   print(list[0].name);
  final std = Student("rakesh");
  final student = list[5];
//  print( student.name);
//   print(std.name);
  if(student is Student){
    print(student.name);
  }
  else{
    print(student);
  }
}

class Student < T >{
  final String name;
  
  Student(this.name);
  
}
