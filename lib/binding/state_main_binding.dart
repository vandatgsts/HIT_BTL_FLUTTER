import 'package:btl_flutter/controller/state_main_controller.dart';
import 'package:btl_flutter/pages/home_page.dart';
import 'package:get/get.dart';

import '../controller/main_screen_controller.dart';
import '../controller/setting_controller.dart';

class StateMainBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(StateMainController());
    Get.lazyPut(() => SettingController());
    Get.lazyPut(() => HomePage());
    Get.lazyPut(()=>MainScreenController());

  }
}