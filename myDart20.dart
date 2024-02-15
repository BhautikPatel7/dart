// Start Mapping  
void main() {

 List <Map<String, int>> marks = [
   {'math' : 20,
    'English' : 30,
   'cs' : 40},
    {'math' : 20,
    'English' : 30,
   'cs' : 40},
    {'math' : 20,
    'English' : 30,
   'cs' : 40},
 ];
  
  marks.map((e){
    e.forEach((key , value){
      print('$key $value');
    });
  }).toList();
}
