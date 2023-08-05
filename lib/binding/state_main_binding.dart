import 'package:btl_flutter/controller/state_main_controller.dart';
import 'package:btl_flutter/pages/menu_screen.dart';
import 'package:get/get.dart';

import '../controller/setting_controller.dart';

class StateMainBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(StateMainController());
    Get.lazyPut(() => SettingController());
    Get.lazyPut(() => MenuScreen());

  }
}