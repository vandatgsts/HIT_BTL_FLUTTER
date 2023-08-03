import 'package:btl_flutter/controller/account_controller.dart';
import 'package:get/get.dart';

class Account extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AccountController());
  }
}