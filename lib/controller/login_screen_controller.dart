import 'package:flutter/material.dart';
import 'package:get/get.dart';
class LoginScreenController extends GetxController{
  final TextEditingController passwordController = TextEditingController();
  RxBool isDisplayPass=false.obs;
}