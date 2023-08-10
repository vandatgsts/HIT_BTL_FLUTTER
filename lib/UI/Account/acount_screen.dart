import 'package:btl_flutter/UI/login/Component/Logo/Logo.dart';
import 'package:btl_flutter/controller/account_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AccountScreen extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget buildButton(String text, Function() onPressed) {
      return Container(
        margin:
            EdgeInsets.only(top: 5.sp, bottom: 5.sp, left: 10.sp, right: 10.sp),
        padding: EdgeInsets.all(10.sp),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            blurRadius: 5.0.sp,
            spreadRadius: 1.0.sp,
            color: Colors.black.withOpacity(0.5),
          )
        ]),
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

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
          onPressed: () => Get.back(),
        ),
        title: const Logo(),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.sp,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Thành viên',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
              ),
            ],
          ),
      Obx(
            () => AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          switchInCurve: Curves.easeInOut,
          transitionBuilder: (child, animation) {
            final rotateTween = Tween<double>(begin: 1, end: 0);
            final rotateAnimation = rotateTween.animate(animation);
            return AnimatedBuilder(
              animation: rotateAnimation,
              builder: (context, child) {
                // Chuyển đổi đơn vị góc từ độ sang radian
                double radians = rotateAnimation.value * 3.14; // 180 degrees for horizontal flip
                return Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(radians),
                  origin: const Offset(0.0, 0.0),
                  child: child,
                );
              },
              child: child,
            );
          },
          child: !controller.viewInfor.value
              ? InkWell(
            key: const ValueKey('inkWell1'),
            child: Container(
              height: 100.sp,
              margin: EdgeInsets.all(10.sp),
              child: Row(
                children: [
                  Container(
                    height: 70.sp,
                    width: 70.sp,
                    margin: EdgeInsets.all(15.sp),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    'Xin chao ${controller.user?.userName}',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 20.sp,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () => {
              controller.viewInfor.value = !controller.viewInfor.value,
            },
          )
              : InkWell(
            key: const ValueKey('inkWell2'),
            child: Container(
              height: 100.sp,
              padding: EdgeInsets.all(20.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Name: ${controller.user?.fullName}'),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Sdt: ${controller.user?.phoneNumber}'),
                    ],
                  ),
                ],
              ),
            ),
            onTap: () => {
              controller.viewInfor.value = !controller.viewInfor.value,
            },
          ),
        ),
      ),

        buildButton('Doi mat khau', () => controller.onPressChangePassWord()),
          buildButton(
              'Cap nhật thông tin', () => controller.onPressChangeInfo())
        ],
      ),
    );
  }
}
