import 'package:btl_flutter/UI/Main/Screen/MainScreen.dart';
import 'package:btl_flutter/UI/setting/setting_screen.dart';
import 'package:get/get.dart';

class StateMainController extends GetxController{
  final List screens=[
    MainScreen(),
    SettingScreen(),
    SettingScreen(),
    SettingScreen(),
  ];
  RxInt selectedIndex=0.obs;
  void onItemTapped(int index) {
    selectedIndex.value = index;
  }

}