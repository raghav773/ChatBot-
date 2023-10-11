import 'dart:convert';

import 'package:chatbot/constants/api_const.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<void> getModels() async {
    try {
      var response = await http.get(Uri.parse("$BASE_URL/models"),
          headers: {'Authorization': 'Bearer $API_KEY'});
      Map jsonResponse = jsonDecode(response.body);
      // process the jsonResponse here
    } catch (error) {
      print('error $error');
    }
  }
}
