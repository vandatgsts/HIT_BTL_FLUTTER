import 'package:btl_flutter/UI/login/Component/Logo/Logo.dart';
import 'package:btl_flutter/controller/setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SettingScreen extends GetView<SettingController> {
  Widget buildButton(String text, Function() onPressed) {
    return Container(
      margin: EdgeInsets.only(top:5.sp,bottom: 5.sp,left: 10.sp,right: 10.sp),
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow:[
          BoxShadow(
            offset: const Offset(0, 0),
            blurRadius: 5.0.sp,
            spreadRadius: 1.0.sp,
            color: Colors.black.withOpacity(0.5),
          )
        ]
      ),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.sp,
            ),
          ),
          const Spacer(),
          IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.navigate_next_outlined,
                color: Colors.green,
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: Get.height / 15,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Logo(),
            ],
          ),
          SizedBox(
            height: 10.sp,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Cài đặt tài khoản',
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 10.sp,
              ),
            ],
          ),
          Container(
            height: 70.sp,
            width: Get.width,
            margin: EdgeInsets.all(10.sp),
            padding: EdgeInsets.all(10.sp),
            decoration: BoxDecoration(
              color: Colors.green[600],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Theo dõi đơn hàng',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Kiem tra trang thai don hang cua ban',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
          ),
          buildButton('Tài khoản', () => {
              controller.onPressAccount(),
          }),
          buildButton('Thông báo', () => {
            controller.onPressNoti(),
          }),
          buildButton('Liên hệ hỗ trợ', () => controller.onPressMessage()),
          buildButton('Đăng Xuất', () => controller.onPressLogout()),

        ],
      ),
    );
  }
}
