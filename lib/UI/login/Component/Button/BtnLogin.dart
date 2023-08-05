import 'package:btl_flutter/AppRouter/AppRouter.dart';
import 'package:btl_flutter/UI/register/Screen/register_screen.dart';
import 'package:btl_flutter/controller/login_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BtnLogin extends GetView<LoginScreenController> {
  const BtnLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 177,
      height: 53,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 177,
              height: 53,
              decoration: ShapeDecoration(
                color: const Color(0xFFE91414),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ),
          TextButton(
             onPressed: () {
               controller.postLoginApi();
             }, child:
            const Text('LOGIN',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w900,
                letterSpacing: 1.62,
              ),),
          ),
        ],
      ),
    );
  }
}
