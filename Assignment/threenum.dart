void main() {
  // Creating List Of 4 Number
  List<int> numbers = [1, 2, 3, 4];
  // Intialize Counter For Final Count
  int count = 0;
  // Using 3 Loop For Cheking Each Number from 1 to List.lenth
  for (var i = 1; i <= numbers.length; i++) {
    for (var j = 1; j <= numbers.length; j++) {
      for (var k = 1; k <= numbers.length; k++) {
        // Compareing Each Three If Its Not Same Then Count ++ And Print
        if (i != j && j != k && k != i) {
          count++; // Increment the counter
          print('$i $j $k'); // Print the generated three-digit number
        }
      }
    }
   
  }
  // Printing Counter
   print('The Total 3 Digit Number From List Is:  $count');
}
