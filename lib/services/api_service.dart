import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<List> fetchData() async {
    final res = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    return json.decode(res.body);
  }
}