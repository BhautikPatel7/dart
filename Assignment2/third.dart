void main() {
  Map<String, int> d1 = {'a': 100, 'b': 200, 'c': 300};
  Map<String, int> d2 = {'a': 300, 'b': 200, 'd': 400};
  sameKeyValuesSum(d1,d2);
 
}
void sameKeyValuesSum(Map < String, int> mapOne , Map < String, int> mapTwo){
   Map<String, int> mapThree = Map.from(mapOne); // Creating a copy of d1
  mapTwo.forEach((key, value) {
   mapThree.update(key, (oldvalue) => oldvalue + value,
        ifAbsent: () => value);
  });

  print(mapThree);
}

 