void main() {
  List<int> ar1 = [2, 9, 7, 10, 12];
  List<int> ar2 = [1, 5, 7, 8];
  
  // Call the function and print the result
  print(calculateSum(ar1, ar2));
}

int calculateSum(List<int> ar1, List<int> ar2) {
  int e = 0; // Variable to store the common element
  int sum = 0; // store the sum 

  // Find the common element between ar1 and ar2
  int i = 0;
  while (i < ar2.length) {
    int j = 0;
    while (j < ar1.length) {
      if (ar2[i] == ar1[j]) {
        e = ar2[i]; // Store the common element
      }
      j++;
    }
    i++;
  }

  // Calculate the sum of elements in ar2 before the common element
  int k = 0;
  while (k < ar2.indexOf(e)) {
    sum += ar2[k];
    k++;
  }

  // Calculate the sum of elements in ar1 from the common element to the end
  int m = ar1.indexOf(e);
  while (m <= ar1.length - 1) {
    sum += ar1[m];
    m++;
  }
  
  // Return the total sum
  return sum; 
}
