import 'package:btl_flutter/AppRouter/AppRouter.dart';
import 'package:btl_flutter/call_API/post_api.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Data/User.dart';

class RegisterController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController name = TextEditingController();
  final TextEditingController userName = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController passWordcontroller = TextEditingController();
  final TextEditingController confirmPassWordController =
      TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  RxString gennerValue = "Khác".obs;
  RxBool isVisible = false.obs;
  RxBool isVisibleConfirm = false.obs;
  RxBool isSuccess = false.obs;
  RxBool firsValue = false.obs;

  RxBool isPasswordEightCharacters = false.obs;
  bool hasPasswordOneNumber = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;

  String message='';
  /// init, khi khoi ta
  /// ready dang chay
  /// close
  onPasswordChanged(String password) {
    final numbericRegex = RegExp(r'[0-9]');
    final specialRegex = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    final upperCaseRegex = RegExp(r'[A-Z]');

    {
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
  }

  void validateEmail() {
    final bool isValid = EmailValidator.validate(emailController.text.trim());
    // if (!isValid) {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       const SnackBar(content: Text("Email không đúng định dạng")));
    // }
  }

  void onPressRegister() async {
    if(!isPasswordEightCharacters.value || !hasPasswordOneNumber ||!hasUpperCase || !hasSpecialCharacters){
      message="Vui lòng kiểm tra lại thông tin đăng nhập";
      return;
    }
    User user = User(
      fullName: name.text,
      userName: userName.text,
      password: passWordcontroller.text,
      gender: gennerValue.value,
      address: addressController.text,
      birthday: dateController.text,
      point: 0,
      phoneNumber: phoneNumber.text,
      email: emailController.text,
    );
    showUserInfo(user);
    message = await PostAPI.registerUser(user);
    if (message.compareTo('Đăng ký thành công') == 0) {
      clearText();
      Get.toNamed(AppRouter.login);
    }
  }

  void showUserInfo(User user) {
    print('Full Name: ${user.fullName}');
    print('Username: ${user.userName}');
    print('Email: ${user.email}');
    print('Phone Number: ${user.phoneNumber}');
    print('Gender: ${user.gender}');
    print('Address: ${user.address}');
    print('Birthday: ${user.birthday}');
  }

  void clearText(){
    name.clear();
    userName.clear();
    phoneNumber.clear();
    addressController.clear();
    emailController.clear();
    dateController.clear();
    gennerValue.value='khác';
    passWordcontroller.clear();
  }
}
