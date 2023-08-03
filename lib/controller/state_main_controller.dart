import 'package:btl_flutter/UI/Main/Screen/MainScreen.dart';
import 'package:btl_flutter/UI/setting/setting_screen.dart';
import 'package:btl_flutter/pages/home_page.dart';
import 'package:get/get.dart';

class StateMainController extends GetxController{
  final List screens=[
    MainScreen(),
    HomePage(),
    SettingScreen(),
    SettingScreen(),
  ];
  RxInt selectedIndex=0.obs;
  void onItemTapped(int index) {
    selectedIndex.value = index;
  }

}