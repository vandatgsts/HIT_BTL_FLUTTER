import 'dart:convert';

import 'package:btl_flutter/AppRouter/AppRouter.dart';
import 'package:btl_flutter/call_API/post_api.dart';
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
      PostAPI.postLogin(emailController.text, passwordController.text);
  }

}