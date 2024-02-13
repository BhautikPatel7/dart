void main() {
//   Intialize Sum With Zero
  int sum = 0;
  print("Prime numbers up to 99999:");
//   for 2 to 99999 printing prime Number
  for (int i = 2; i <= 99999; i++) {
//     Is Pime Return true to Value This is Printing "I"
    if (isPrime(i)) {
      print(i);
//       Adding Every Value Of (i) To Sum
      sum += i;
    }
  }
  // Printing Sum
 print("The Sum Of Prime Number Between 1 to 99999 Is:  $sum");

}
// Functin TO Chek Next Number iS Prime Or Not
bool isPrime(int number) {
//   For "1" All Num Is Always Divisable
  if (number <= 1) {
    return false;
  }
//   From 2 To Number -1 Cheking Its Divisable By Any Number Or Not
  for (int j = 2; j <= number - 1; j++) {
    if (number % j == 0) {
      return false;
    }
  }
//   Returns True Only For Prime Number
  return true;
}