void main() {
  final records = (4.5, greeting: 'hi', isadult: true, 2);
  print(records);
//   records.$1 = 3.5;
//   Records Are type Safe And Can Be nullabe

  ({int x, int y, int z}) point = (x: 5, y: 6, z: 7);
  ({int x, int y, int z}) color = (x: 7, y: 6, z: 5);

  print(point);
  print(color);
  
  point = color;
  print(point);
  print(color);
  
    
}

({double value, String greeting}) giveMeSomeDouble() {
  return (value: 1.5, greeting: 'hi');
}
