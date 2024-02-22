import 'dart:math';
void main() {
  solution sol = solution();
  List<List<int>> board1 = [
    [9, 1, 1, 0, 7],
    [1, 0, 2, 1, 0],
    [1, 9, 1, 1, 0]
  ];
  print(sol.iterateAllElementWithoutZreo(board1));

  List<List<int>> board2 = [
    [1, 1, 1],
    [1, 3, 4],
    [1, 4, 3]
  ];
  print(sol.iterateAllElementWithoutZreo(board2));

  List<List<int>> board3 = [
    [0, 1, 5, 0, 0]
  ];
  print(sol.iterateAllElementWithoutZreo(board3));
}

class solution {
// Function Thats Return Value of Integer
  int iterateAllElementWithoutZreo(List<List<int>> board) {
    // Initialize with a minimum value
    int res = -1;

    // row Count
    int n = board.length;
    // print(n);
    // Colum Counts
    int m = board[0].length;
    // print(m);

// Number Cant be Start With Zero So Skipping This
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < m; j++) {
        // Skip paths starting with 0
        if (board[i][j] == 0) {
          continue;
        }

        // print(board[i][j]);

        List<bool> visited = List<bool>.filled(n * m, false);
        // from Each Of element Its Start Exploring element And this Function make Sure Return intiger Thats Created 4 part
        int currentResult = chekEveryElementNeighboringUsingDfs(
            board, i * m + j, visited, 1, board[i][j]);
        // print(i*m + j);
        // Reurns The Max Of integer
        res = max(res, currentResult);
      }
    }
    return res;
  }

// Return intiger thats Shows Pair of this
  int chekEveryElementNeighboringUsingDfs(List<List<int>> board, int position,
      List<bool> visited, int length, int current) {
    int maxResult = -1;
    // list Thats Store The Postion Of Element,Length, And Current Element
    var listforeverynode = <List<int>>[];
    listforeverynode.add([position, length, current]);

    // Move to Up And Down
    List<int> dx = [-1, 1, 0, 0];

    // Move to left and Right Of Element
    List<int> dy = [0, 0, -1, 1];

    // Condtion For dfs Stck
    // First Remove Last Element And Add Their Connected Element to stack Still All Node Not Visited
    while (listforeverynode.isNotEmpty) {
      var top = listforeverynode.removeLast();
      position = top[0];
      length = top[1];
      current = top[2];
      // If Element Is Visited Than Makes Its True So Next time Not Visit That
      visited[position] = true;
      int n = board.length;
      int m = board[0].length;
// Base Condtion For Pair Of Four
      if (length == 4) {
        maxResult = max(maxResult, current);
      } else {
        // four For up,down,top and Bottom
        for (int k = 0; k < 4; k++) {
          // New x Is give value Of up and down
          int newX = position ~/ m + dx[k];
          // New y Is give value Of left and Right
          int newY = position % m + dy[k];
          // for Next Neighboring 
          int newPos = newX * m + newY;
          // Condtion for Boundry Where Not Visit Again
          if (newX >= 0 &&
              newX < n &&
              newY >= 0 &&
              newY < m &&
              !visited[newPos]) {
            int next = board[newX][newY];
            // Add Neighboring Element to List
            listforeverynode.add([newPos, length + 1, current * 10 + next]);
            // print(hu);
          }
        }
      }
    }
    return maxResult;
  }
}
