import 'dart:core';
void main() {
  List<int> coins = [1, 2, 3];
  int n = coins.length;

  print(count(coins, n, 4));
}


int count(List<int> coins, int n, int sum) {
  // Create a list to store results of subproblems
  List<int> dp = List.filled(sum + 1, 0);

  // Initialize base case (when sum is 0, there's 1 way to make the sum, i.e., by not choosing any coin)
  dp[0] = 1;

  // Iterate over all coins
  for (int i = 0; i < n; i++) {
    // For each coin, update dp[j] for all sums j from coins[i] to sum
    for (int j = coins[i]; j <= sum; j++) {
      dp[j] += dp[j - coins[i]];
    }
  }

  // The result is stored in dp[sum]
  return dp[sum];
}


