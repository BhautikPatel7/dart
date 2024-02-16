void main() {
  final employee1 = Employee('myname', EmployeeType.dev);
   final employee2 = Employee('yorname',EmployeeType.fin);
     final employee3 = Employee('subname',EmployeeType.market);
//   final employee4 = Employee('subname1',EmployeeType.none);
  
  employee1.fn();
  employee2.fn();
//   employee4.fn();
}
enum EmployeeType{
   dev(2000),
   fin(25000),
   market(1000);
   final int salay;
   const EmployeeType(this.salay);
  
}

class Employee {
  final String name;
  final EmployeeType type;
  
  Employee(this.name , this.type);
  
  void fn(){
    switch(type){
      case EmployeeType.dev:
        print(type.salay);
      case EmployeeType.fin:
        print('Finance');
        case EmployeeType.market:
        print('Marketing');
      defult :
        print('SomeThing Went Wrong');
    }
  }
  
  
}




