package dart;
public class Solution {

    public static int solution(int[][] board) {
        int res = Integer.MIN_VALUE;
        for (int i = 0; i < board.length; i++) {
            for (int j = 0; j < board[0].length; j++) {
                boolean[][] visited = new boolean[board.length][board[0].length];
                res = Math.max(res, biggestNumber(board, i, j, visited, ""));
            }
        }
        return res;
    }

    public static int biggestNumber(int[][] board, int row, int column, boolean[][] visited, String current) {
        if (row < 0 || column < 0 || row >= board.length || column >= board[0].length || visited[row][column]) {
            return 0;
        }
        current += String.valueOf(board[row][column]);
        if (current.length() == 4) {
            return Integer.parseInt(current);
        }

        int[] dr = {1, 0, -1, 0};
        int[] dc = {0, 1, 0, -1};
        visited[row][column] = true;
        int[] stack = new int[4];
        for (int k = 0; k < 4; k++) {
            stack[k] = biggestNumber(board, row + dr[k], column + dc[k], visited, current);
        }

        int max = Integer.MIN_VALUE;
        for (int num : stack) {
            max = Math.max(max, num);
        }
        return max;
    }

    public static void main(String[] args) {
        int[][] board = {{1,1,1},{1, 3, 4},{1,4,3}};
        System.out.println(solution(board));
        int[][] board1 = {{9, 1, 1, 0, 7},{1, 0, 2, 1, 0},{1, 9, 1, 1, 0}};
        System.out.println(solution(board1));
        int[][] board2 = {{0,1,5,0,0}};
        System.out.println(solution(board2));
    }
}
