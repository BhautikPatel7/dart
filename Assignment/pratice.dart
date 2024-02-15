void main() {
  int rowCount = 4;
    for (int i = -1; i < rowCount; i++) {
      if(i == -1){
        print("*");
      }
      else{
      int starCount = 3 + i * (i + 1) ~/ 2;
      String row = '';
      for (int j = 0; j < starCount; j++) {
        row += '*';
      }
      print(row);
    }
    }
    for (int i = rowCount - 2; i >= -1; i--) {
      if( i == -1){
        print("*");
      }
      else{
      int starCount = 3 + i * (i + 1) ~/ 2;
      String row = '';
      for (int j = 0; j < starCount; j++) {
        row += '*';
      }
      print(row);
    }
    }
}

