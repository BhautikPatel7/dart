void main() {
  List<List<int>> board = [
    [9, 1, 1, 0, 7],
    [1, 0, 2, 1, 0],
    [1, 9, 1, 1, 0]
  ];
  int maxElem = maxElementOfBoard(board);
  print("Maximum element of the board: $maxElem");
  int maxNeighbor = findMaxNeighborOfMaxElement(board, maxElem);
  print("Maximum neighbor of the maximum element: $maxNeighbor");
}

int maxElementOfBoard(List<List<int>> board) {
  int m = board.length;
  int n = board[0].length;
  int maxElement = board[0][0];
  for (int i = 0; i < m; i++) {
    for (int j = 0; j < n; j++) {
      if (maxElement < board[i][j]) {
        maxElement = board[i][j];
      }
    }
  }
  return maxElement;
}

int findMaxNeighborOfMaxElement(List<List<int>> board, int maxElement) {
  int m = board.length;
  int n = board[0].length;
  int maxNeighbor = -2147483648; // Initialize with a very large negative value
  for (int i = 0; i < m; i++) {
    for (int j = 0; j < n; j++) {
      if (board[i][j] == maxElement) {
        // Check neighboring elements
        for (int dx = -1; dx <= 1; dx++) {
          for (int dy = -1; dy <= 1; dy++) {
            int newX = i + dx;
            int newY = j + dy;
            if (newX >= 0 && newX < m && newY >= 0 && newY < n &&
                (dx != 0 || dy != 0)) {
              if (board[newX][newY] > maxNeighbor) {
                maxNeighbor = board[newX][newY];
              }
            }
          }
        }
      }
    }
  }
  return maxNeighbor;
}       
