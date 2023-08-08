import 'package:btl_flutter/controller/state_main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';

import '../AppRouter/AppRouter.dart';
class MainScreenController extends GetxController{
  late BuildContext context;
  onPressSeeMenu(){
    if(!Get.isRegistered<StateMainController>()){
      Get.put(StateMainController());
    }
    Get.find<StateMainController>().selectedIndex.value=1;
  }

  onPressCombo(int index){
    /// chuyen den màn combo dc click
  }
  onPressCallGoogleMap() async {
    Position currentPosition = await getCurrentPosition(context);
    Get.toNamed(AppRouter.mapScreen,
        arguments: {'myLocation': currentPosition});
  }
  Future<Position> getCurrentPosition(BuildContext context) async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // showErrorDialog(context, StringConstants.errorLocation01.tr);
      return Future.error({'code': 1, 'message': 'lõi'});
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // showErrorDialog(context, StringConstants.errorLocation02.tr);
        return Future.error({'code': 2, 'message': 'Loi'});
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error({'code': 2, 'message': 'Loi'});
    }
    return await Geolocator.getCurrentPosition();
  }
}