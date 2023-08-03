import 'package:btl_flutter/AppRouter/AppRouter.dart';
import 'package:get/get.dart';
class SettingController extends GetxController{
  void onPressAccount(){

  }
  void onPressNoti(){

  }
  void onPressMessage(){

  }
  void onPressLogout(){
    Get.offAndToNamed(AppRouter.accountScreen);
  }
}