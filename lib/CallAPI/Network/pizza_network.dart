
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../widgets/pizza.dart';
import '../Contructor/pizza.dart';


class NetworkRequestPizza {
  static const String url = 'http://207.148.118.106:8080/combo/products?comboId=6&categoryId=2';
  static List<Pizza> parsePizza(String responseBody) {
    var list = json.decode(responseBody)["data"] as List<dynamic>;
    List<Pizza> piza= list.map((model) => Pizza.fromJson(model)).toList();
    return piza;
  }

  static Future<List<Pizza>> fetchPizza() async {
    try {
      final header = {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };
      final res = await http.get(Uri.parse(url), headers: header);
      final response = jsonDecode(utf8.decode(res.bodyBytes))["data"];

      print("hehi" + res.statusCode.toString());
      
      if (res.statusCode == 200) {
        
        return List.from(response.map((e) => Pizza.fromJson(e)));
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
