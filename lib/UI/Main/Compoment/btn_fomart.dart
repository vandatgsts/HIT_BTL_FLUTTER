import 'package:btl_flutter/AppRouter/AppRouter.dart';
import 'package:btl_flutter/UI/Main/Screen/map_screen.dart';
import 'package:btl_flutter/controller/main_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BtnShip extends GetView<MainScreenController> {
  const BtnShip({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        Position currentPosition = await getCurrentPosition(context);
        Get.toNamed(AppRouter.mapScreen,
            arguments: {'myLocation': currentPosition});
      },
      child: Container(
        width: Get.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.sp),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 0),
              blurRadius: 5.0.sp,
              spreadRadius: 1.0.sp,
              color: Colors.black.withOpacity(0.5),
            )
          ],
        ),
        child: const ListTile(
          leading: Icon(
            Icons.local_shipping,
            color: Colors.red,
          ),
          title: Text(
            'Giao hàng tân nơi',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          subtitle: Text('Hãy cho chúng tôi biết vi trí của ban'),
          trailing: Icon(Icons.navigate_next),
        ),
      ),
    );
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
