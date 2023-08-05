import 'dart:convert';

import 'package:btl_flutter/AppRouter/AppRouter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;


import '../Data/User.dart';
class LoginScreenController extends GetxController {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  RxBool isDisplayPass = false.obs;

  late User userLogin;

  void postLoginAPI() {

  }

  Future<void> getCurrentUser() async {
    final response = await http.get(
      Uri.parse('http://207.148.118.106:8080/api/v1/user/current'),
    );
    print('statusCode:${response.statusCode}');
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);

      return;
    } else {
      throw Exception('Failed to load user');
    }
// Replace 'User' with the actual model class representing the response data.
  }
}