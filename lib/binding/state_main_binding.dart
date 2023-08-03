import 'package:btl_flutter/controller/state_main_controller.dart';
import 'package:get/get.dart';

class StateMainBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(StateMainController());

  }
}