import 'dart:convert';

import 'package:http/http.dart' as http;
void main() {
  getData();
}

//flutter pub add http

void getData() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/2');
  var response = await http.get(url);
  print("Data Response $response");
  if (response.statusCode == 200) {
    var jsonRes = jsonDecode(response.body); // need lib convert
    print('Title : ${jsonRes['title']}');
    print('Complete : ${jsonRes['complete']}');
  }else {
    print(' Response gagal dengan status code : ${response.statusCode}');
  }

}