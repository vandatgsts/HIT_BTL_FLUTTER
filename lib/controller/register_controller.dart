import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:email_validator/email_validator.dart';

class RegisterController extends GetxController{
  final formKey = GlobalKey<FormState>();
  final TextEditingController name = TextEditingController();
  final TextEditingController userName = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController passWordcontroller = TextEditingController();
  final TextEditingController confirmPassWordController =
  TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  String dropdownValue = "Khác";
  bool isVisible = false;
  bool isVisibleConfirm = false;
  RxBool isSuccess = false.obs;
  RxBool firsValue = false.obs;

  bool isPasswordEightCharacters = false;
  bool hasPasswordOneNumber = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;

  onPasswordChanged(String password) {
    final numbericRegex = RegExp(r'[0-9]');
    final specialRegex = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    final upperCaseRegex = RegExp(r'[A-Z]');

    {
      isPasswordEightCharacters = false;
      if (password.length >= 8) {
        isPasswordEightCharacters = true;
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
  }
  void validateEmail() {
    final bool isValid = EmailValidator.validate(emailController.text.trim());
    // if (!isValid) {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       const SnackBar(content: Text("Email không đúng định dạng")));
    // }
  }
}