import 'dart:math';
// Solution Using Stack
void main() {
  List<List<int>> board1 = [
    [9, 1, 1, 0, 7],
    [1, 0, 2, 1, 0],
    [1, 9, 1, 1, 0]
  ];
  print(solution(board1)); 

  List<List<int>> board2 = [
    [1, 1, 1],
    [1, 3, 4],
    [1, 4, 3]
  ];
  print(solution(board2));

  List<List<int>> board3 = [
    [0, 1, 5, 0, 0]
  ];
  print(solution(board3)); 
}


// Function Thats Return Value of Integer
int solution(List<List<int>> board) {
   // Initialize with a minimum value
  int res = -1;

  // row Count
  int n = board.length;
  // print(n);
  // Colum Counts
  int m = board[0].length;
  // print(m);

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < m; j++) {
      // Skip paths starting with 0
      if (board[i][j] == 0){
        continue;
      } 
      // print(board[i][j]);

      List<bool> visited = List<bool>.filled(n * m, false);
      int currentResult = dfs(board, i * m + j, visited, 1, board[i][j]);
      // print(i*m + j);
      res = max(res, currentResult);
    }
  }
  return res;
}

// Return intiger thats Shows Pair of this
int dfs(List<List<int>> board, int position, List<bool> visited, int length, int current) {
  List<int> dx = [-1, 1, 0, 0]; 
  List<int> dy = [0, 0, -1, 1];
  int maxResult = -1;

  var stack = <List<int>>[];
  stack.add([position, length, current]);

  while (stack.isNotEmpty) {
    var top = stack.removeLast();
    position = top[0];
    length = top[1];
    current = top[2];

    visited[position] = true;
    int n = board.length;
    int m = board[0].length;

    if (length == 4) {
      maxResult = max(maxResult, current);
    } else {
      for (int k = 0; k < 4; k++) {
        int newX = position ~/ m + dx[k];
        int newY = position % m + dy[k];
        int newPos = newX * m + newY;

        if (newX >= 0 && newX < n && newY >= 0 && newY < m && !visited[newPos]) {
          int next = board[newX][newY];
          stack.add([newPos, length + 1, current * 10 + next]);
        }
      }
    }
  }

  return maxResult;
}
