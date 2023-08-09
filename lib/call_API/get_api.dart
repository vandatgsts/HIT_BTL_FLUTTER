import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Data/Product.dart';
import '../Data/User.dart';

class GetApi {
  static String api = 'http://207.148.118.106:8080/';

  static Future<User> getCurrentUser(String token) async {
    final url = '${api}api/v1/user/current'; // Replace with your API endpoint
    // Add any required headers (e.g., authorization token) to the request headers
    Map<String, String> headers = {
      'Authorization': 'Bearer $token', // Replace with your access token
      'Content-Type': 'application/json',
    };

    try {
      final response = await http.get(Uri.parse(url), headers: headers);

      if (response.statusCode == 200) {
        // API call successful, parse the JSON response and create a User object
        Map<String, dynamic> jsonData = json.decode(response.body)["data"];
        print(jsonData);

        return User.fromJson(jsonData);
      } else {
        // API call failed, handle the error accordingly
        print('Error: ${response.statusCode}');
        throw Exception('Failed to load data'); // Return null or handle the error case depending on your use case
      }
    } catch (e) {
      // Error occurred during API call
      print('Error: $e');
      throw Exception('Failed to load data'); // Return null or handle the error case depending on your use case
    }
  }

  static Future<List<Product>> getProducts() async {
    final response = await http.get(Uri.parse('${api}product/point'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData =
          json.decode(utf8.decode(response.body.codeUnits))["data"];
      final List<Product> products =
          jsonData.map((item) => Product.fromJson(item)).toList();
      return products;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
