import 'package:btl_flutter/UI/login/Component/Button/BtnLogin.dart';
import 'package:btl_flutter/UI/login/Component/Button/FogotPassWord.dart';
import 'package:btl_flutter/UI/login/Component/InputText/InputText1.dart';

import 'package:btl_flutter/UI/login/Component/Logo/Logo.dart';
import 'package:btl_flutter/UI/login/Component/ViewText/TextLogin.dart';
import 'package:btl_flutter/controller/login_screen_controller.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Component/Button/Register.dart';
import '../Component/InputText/InputPassword.dart';

// Generated by: https://www.figma.com/community/plugin/842128343887142055/
class LoginScreen extends GetView<LoginScreenController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    controller.context = context;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        clipBehavior: Clip.antiAlias,
        alignment: Alignment.center,
        decoration: const BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            const Positioned(
              left: 93,
              top: 91.0,
              child: Logo(),
            ),
            Positioned(
              left: -104.0,
              top: -89.0,
              child: SizedBox(
                width: 290.0,
                height: 270.0,
                // hinh tron do
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 70.0,
                      child: Container(
                        width: 200.0.sp,
                        height: 200.0,
                        decoration: const BoxDecoration(
                          color: Color(0x7CF31132),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 90,
                      top: 0,
                      child: Container(
                        width: 200.sp,
                        height: 200.sp,
                        decoration: const ShapeDecoration(
                          color: Color(0x7CF31132),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width / 2.7,
              top: 179.61,
              child: const TextLogin(),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width / 10,
              top: 278.71,
              child: Material(
                child: InputText1(),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width / 10,
              top: 331.71,
              child: Material(
                child: InputPassword(),
              ),
            ),
            Obx(
              () => Positioned(
                left: !controller.isLoading.value
                    ? Get.width / 3.5
                    : Get.width / 2 - 10.sp,
                top: 411,
                child: const BtnLogin(),
              ),
            ),
            Obx(
              () => Positioned(
                left: Get.width / 4,
                top: 500,
                child:!controller.isLogin.value? const Text(
                  "Sai tên đăng nhập hoặc mật khẩu ",
                  style: TextStyle(color: Colors.red),
                ):const SizedBox(),
              ),
            ),
            const Positioned(
              left: 20.0,
              top: 511,
              child: ForgotPassWord(),
            ),
            const Positioned(
              right: 20,
              top: 511,
              child: Register(),
            )
          ],
        ),
      ),
    );
  }
}
