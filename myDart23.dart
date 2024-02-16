import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  var url = Uri.https('jsonplaceholder.typicode.com', 'users');
  try {
    var res = await http.get(url);
    var hyy = jsonDecode(res.body);
    var nothyy = jsonEncode(res.body);
    
    print(hyy);
//     print(nothyy);
  } catch (e) {
    print("Something Went Wrong");
  }
}
