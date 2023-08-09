import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../Contructor/bogo.dart';


class NetworkRequestBogo {
  static const String url = 'http://207.148.118.106:8080/combo/category/8';
  static List<BOGO> parseBgo(String responseBody) {
    var list = json.decode(responseBody)["data"] as List<dynamic>;
    List<BOGO> bogo= list.map((model) => BOGO.fromJson(model)).toList();
    return bogo;
  }

  static Future<List<BOGO>> fetchBogo() async {
    try {
      final header = {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };
      final res = await http.get(Uri.parse(url), headers: header);
      final response = jsonDecode(utf8.decode(res.bodyBytes))["data"];

      print("hehi" + res.statusCode.toString());
      
      if (res.statusCode == 200) {
        
        return List.from(response.map((e) => BOGO.fromJson(e)));
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
