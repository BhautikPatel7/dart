void main() {
  List<List<int>> board1 = [
    [9, 1, 1, 0, 7],
    [1, 0, 2, 1, 0],
    [1, 9, 1, 1, 0]
  ];
  print(solution(board1)); // Output should be 9121

  // List<List<int>> board2 = [
  //   [1, 1, 1],
  //   [1, 3, 4],
  //   [1, 4, 3]
  // ];
  // print(solution(board2)); // Output should be 4343

  // List<List<int>> board3 = [
  //   [0, 1, 5, 0, 0]
  // ];
  // print(solution(board3)); // Output should be 1500
}
// Function Thats Return Value of Integer
int solution(List<List<int>> board) {
  int res = -1; // Initialize with a minimum value
  int n = board.length;
  print(n);
  int m = board[0].length;
  print(m);

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < m; j++) {
      if (board[i][j] == 0) continue; // Skip paths starting with 0

      List<bool> visited = List<bool>.filled(n * m, false);
      int currentResult = dfs(board, i * m + j, visited, 1, board[i][j]);
      res = res > currentResult ? res : currentResult;
    }
  }
  return res;
}

int dfs(List<List<int>> board, int position, List<bool> visited, int length, int current) {
  if (length == 4) {
    return current;
  }

  visited[position] = true;
  int n = board.length;
  int m = board[0].length;
  int maxResult = -1;

  List<int> dx = [-1, 1, 0, 0]; // Directions: up, down, left, right
  List<int> dy = [0, 0, -1, 1];

  for (int k = 0; k < 4; k++) {
    int newX = position ~/ m + dx[k];
    int newY = position % m + dy[k];
    int newPos = newX * m + newY;

    if (newX >= 0 && newX < n && newY >= 0 && newY < m && !visited[newPos]) {
      int next = board[newX][newY];
      maxResult = maxResult > current * 10 + next ? maxResult : current * 10 + next;
      maxResult = maxResult > dfs(board, newPos, visited, length + 1, current * 10 + next) ? maxResult : dfs(board, newPos, visited, length + 1, current * 10 + next);
    }
  }
  visited[position] = false;
  return maxResult;
}


