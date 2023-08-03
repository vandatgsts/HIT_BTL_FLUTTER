import 'package:btl_flutter/UI/login/Component/Logo/Logo.dart';
import 'package:btl_flutter/controller/setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widget/app_color.dart';

class SettingScreen extends GetView<SettingController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: Get.height/15,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Logo(),
            ],
          ),
          SizedBox(height: 10.sp,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Cài đặt tài khoản',
              style: TextStyle(
                fontSize: 25.sp,
                fontWeight: FontWeight.w700,
              ),),
              SizedBox(width: 10.sp,),
              const Icon(Icons.handyman,color: Colors.grey,),
            ],
          ),
          Container(
            height: 70.sp,
            width: Get.width,
            margin: EdgeInsets.all(10.sp),
            decoration: BoxDecoration(
              color: Colors.green[600],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Theo dõi đơn hàng',style:
                  TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),),

              ],
            ),
          )
        ],
      ),
    );
  }

}