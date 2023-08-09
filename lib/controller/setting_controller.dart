import 'package:btl_flutter/AppRouter/AppRouter.dart';
import 'package:get/get.dart';
class SettingController extends GetxController{
  void onPressAccount(){
    Get.toNamed(AppRouter.accountScreen);
  }
  void onPressNoti(){

  }
  void onPressMessage(){

  }
  void onPressLogout(){
    print('check out');
    Get.offAndToNamed(AppRouter.login);
  }
}