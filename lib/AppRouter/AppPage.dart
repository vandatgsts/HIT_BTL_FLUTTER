import 'package:btl_flutter/AppRouter/AppRouter.dart';
import 'package:btl_flutter/UI/login/Component/Button/FogotPassWord.dart';
import 'package:btl_flutter/UI/register/Screen/register_screen.dart';
import 'package:btl_flutter/binding/LoginBinding.dart';
import 'package:btl_flutter/UI/login/Screen/LoginScreen.dart';
import 'package:btl_flutter/binding/MainBinding.dart';
import 'package:btl_flutter/UI/Main/Screen/MainScreen.dart';
import 'package:btl_flutter/binding/forgot_pass_word_binding.dart';
import 'package:get/get.dart';

import '../binding/register_bingdin.dart';


class AppPage {
  static final pages = [
    GetPage(
        name: AppRouter.mainScreen,
        page: () => MainScreen(),
        binding: MainBinding()),
    GetPage(
        name: AppRouter.login,
        page: () => LoginScreen(),
        binding: LoginBinding()),
    GetPage(
        name: AppRouter.forgotPassWord,
        page: () => ForgotPassWord(),
        binding: ForgotPassWordBingding()),
    GetPage(
        name: AppRouter.register,
        page: () => RegisterScreen(),
        binding: RegisterBinding()),


  ];
}
