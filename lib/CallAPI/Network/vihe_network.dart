import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../Contructor/post.dart';

class NetworkRequestViHe {
  static const String url = 'http://207.148.118.106:8080/combo/category/6';
  static List<Post> parsePost(String responseBody) {
    var list = json.decode(responseBody)["data"] as List<dynamic>;
    List<Post> posts = list.map((model) => Post.fromJson(model)).toList();
    return posts;
  }

  static Future<List<Post>> fetchPost() async {
    try {
      final header = {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };
      final res = await http.get(Uri.parse(url), headers: header);
      final response = jsonDecode(utf8.decode(res.bodyBytes))["data"];

      print("hehi" + res.statusCode.toString());

      if (res.statusCode == 200) {
        
        return List.from(response.map((e) => Post.fromJson(e)));
      } else if (res.statusCode == 404) {
        throw Exception("Not Found");
      } else {
        throw Exception("Can\t get post");
      }
    } catch (e) {
      throw Exception("Error:$e");
    }
  }
}
