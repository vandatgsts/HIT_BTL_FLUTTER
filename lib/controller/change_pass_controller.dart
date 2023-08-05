import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ChangePassController extends GetxController {
  TextEditingController oldPassWordControler = TextEditingController();
  final TextEditingController passWordcontroller = TextEditingController();
  final TextEditingController confirmPassWordController =
      TextEditingController();

  RxBool isVisible = false.obs;
  bool isVisibleConfirm = false;
  RxBool isSuccess = false.obs;

  RxBool isPasswordEightCharacters = false.obs;
  bool hasPasswordOneNumber = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;

  onPasswordChanged(String password) {
    final numbericRegex = RegExp(r'[0-9]');
    final specialRegex = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    final upperCaseRegex = RegExp(r'[A-Z]');

    isPasswordEightCharacters = false.obs;
    if (password.length >= 8) {
      isPasswordEightCharacters = true.obs;
    }
    hasPasswordOneNumber = false;
    if (numbericRegex.hasMatch(password)) {
      hasPasswordOneNumber = true;
    }
    hasUpperCase = false;
    if (upperCaseRegex.hasMatch(password)) {
      hasUpperCase = true;
    }
    hasSpecialCharacters = false;
    if (specialRegex.hasMatch(password)) {
      hasSpecialCharacters = true;
    }

  }

  onPressChangePass(){}
}
