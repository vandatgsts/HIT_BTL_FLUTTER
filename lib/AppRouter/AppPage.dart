import 'package:btl_flutter/AppRouter/AppRouter.dart';
import 'package:btl_flutter/UI/Account/acount_screen.dart';
import 'package:btl_flutter/UI/ForgotPassWord/Screen/Screen1.dart';
import 'package:btl_flutter/UI/Main/Screen/map_screen.dart';
import 'package:btl_flutter/UI/login/Component/Button/FogotPassWord.dart';
import 'package:btl_flutter/UI/register/Screen/register_screen.dart';
import 'package:btl_flutter/UI/state_main/state_main_screen.dart';
import 'package:btl_flutter/binding/LoginBinding.dart';
import 'package:btl_flutter/UI/login/Screen/LoginScreen.dart';
import 'package:btl_flutter/binding/MainBinding.dart';
import 'package:btl_flutter/UI/Main/Screen/MainScreen.dart';
import 'package:btl_flutter/binding/account_binding.dart';
import 'package:btl_flutter/binding/change_pass_binding.dart';
import 'package:btl_flutter/binding/forgot_pass_word_binding.dart';
import 'package:btl_flutter/binding/map_binding.dart';
import 'package:btl_flutter/binding/setting_binding.dart';
import 'package:btl_flutter/binding/state_main_binding.dart';
import 'package:btl_flutter/controller/account_controller.dart';
import 'package:get/get.dart';

import '../UI/change_password/change_pass_screen.dart';
import '../UI/setting/setting_screen.dart';
import '../binding/cart_binding.dart';
import '../binding/register_bingdin.dart';
import '../cart/cart.dart';


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
        page: () => ForgotPassWordScreen1(),
        binding: ForgotPassWordBingding()),
    GetPage(
        name: AppRouter.register,
        page: () => RegisterScreen(),
        binding: RegisterBinding()),
    GetPage(
        name: AppRouter.mapScreen,
        page: () => MapScreen(),
        binding: MapBinding()),
    GetPage(
        name: AppRouter.settingScreen,
        page: () => SettingScreen(),
        binding: SettingBinding()),
    GetPage(
        name: AppRouter.stateMainScreen,
        page: () => StateMainScreen(),
        binding: StateMainBinding()),
    GetPage(
        name: AppRouter.accountScreen,
        page: () => AccountScreen(),
        binding: AccountBinding()),
    GetPage(
        name: AppRouter.changePassScreen,
        page: () => ChangePassScreen(),
        binding:ChangePassBinding()),
     GetPage(
        name: AppRouter.menu,
        page: () => ShoppingCartScreen(),
        binding:CartBinding()),
  ];
}
