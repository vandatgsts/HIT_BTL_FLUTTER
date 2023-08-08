import 'dart:convert';
import 'package:http/http.dart' as http;

import '../Data/User.dart';
class GetApi{
  static Future<User?> getCurrentUser() async {
    final url = 'https://example.com/api/current_user'; // Replace with your API endpoint

    // Add any required headers (e.g., authorization token) to the request headers
    Map<String, String> headers = {
      'Authorization': 'Bearer YOUR_ACCESS_TOKEN', // Replace with your access token
      'Content-Type': 'application/json',
    };

    try {
      final response = await http.get(Uri.parse(url), headers: headers);

      if (response.statusCode == 200) {
        // API call successful, parse the JSON response and create a User object
        Map<String, dynamic> jsonData = json.decode(response.body);
        return User.fromJson(jsonData);
      } else {
        // API call failed, handle the error accordingly
        print('Error: ${response.statusCode}');
        return null; // Return null or handle the error case depending on your use case
      }
    } catch (e) {
      // Error occurred during API call
      print('Error: $e');
      return null; // Return null or handle the error case depending on your use case
    }
  }


}