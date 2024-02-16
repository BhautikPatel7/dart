import 'dart:core';
void main() {
  List<int> arr = [1, 5, 11, 5];
  int n = arr.length;
   List<int> arr1 = [1, 5, 3];
  int m = arr.length;
  

  // Function call
  if (findPartition(arr, n))
    print(true);
  else
    print(false);

     if (findPartition(arr1, m))
    print(true);
  else
    print(false);
}


bool isSubsetSum(List<int> arr, int n, int sum) {
  // Base Cases
  if (sum == 0) return true;
  if (n == 0 && sum != 0) return false;

  // If last element is greater than sum, then ignore it
  if (arr[n - 1] > sum) return isSubsetSum(arr, n - 1, sum);

  /* else, check if sum can be obtained by any of
  the following
  (a) including the last element
  (b) excluding the last element
  */
  return isSubsetSum(arr, n - 1, sum) ||
      isSubsetSum(arr, n - 1, sum - arr[n - 1]);
}

bool findPartition(List<int> arr, int n) {
  // Calculate sum of the elements in array
  int sum = arr.reduce((a, b) => a + b);

  // If sum is odd, there cannot be two subsets
  // with equal sum
  if (sum % 2 != 0) return false;

  // Find if there is subset with sum equal to half
  // of total sum
  return isSubsetSum(arr, n, sum ~/ 2);
}


