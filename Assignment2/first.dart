void main() {
  var color = {1: 'red', 2: 'green', 3: 'black', 4: 'white', 5: 'black'};
  Map county = {
    '1': 'AustinLittle',
    '2': 'Natasha Howard',
    '3': 'Alfred Mullins',
    '4': 'Jamie Rowe'
  };
  converMapToList(color);
  converMapToList(county);
}

void converMapToList(Map mapName) {
  var list = [];
  mapName.forEach((k, v) => list.add(['$k, $v']));
  print(list);
}
