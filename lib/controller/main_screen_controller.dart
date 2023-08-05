import 'package:btl_flutter/controller/state_main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MainScreenController extends GetxController{
  onPressSeeMenu(){
    if(!Get.isRegistered<StateMainController>()){
      Get.put(StateMainController());
    }
    Get.find<StateMainController>().selectedIndex.value=1;
  }

  onPressCombo(int index){
    /// chuyen den màn combo dc click
  }
}