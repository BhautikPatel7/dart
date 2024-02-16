void main() {
  String motivation = "this is Day";
  motivation = motivation.capitilizeFirstChar();
  print(motivation);

  String name = 'myName';
  name = name.capitilizeFirstChar();
  print(name);
}

extension CapitalizefirstcharofString on String {
  String capitilizeFirstChar() {
    return this[0].toUpperCase() + this.substring(1);
  }
}
