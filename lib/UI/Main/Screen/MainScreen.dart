import 'package:btl_flutter/UI/Main/Compoment/btn_fomart.dart';
import 'package:btl_flutter/controller/main_screen_controller.dart';
import 'package:flutter/material.dart';

import '../../login/Component/Logo/Logo.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Compoment/btn2.dart';

class MainScreen extends GetView<MainScreenController> {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Get.height/16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Expanded(child: Logo()),
                IconButton(
                      onPressed:(){},
                  icon:const Icon(Icons.notifications),),
              ],
            ),
            Image.asset("assets/ViHe/Banner.jpg",fit: BoxFit.fill,height: 150.sp,),
            SizedBox(height: 10.sp,),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Chào mừng trở lai',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold,fontSize: 16),
                ),
                Text('Vui lòng chon Giao Hàng tận nơi hoăc Mua Mang Về',style: TextStyle(fontSize: 16),),
              ],
            ),
            SizedBox(height: 10.sp,),
            const BtnShip(),
            Btn2(),
            SizedBox(height: 10.sp,),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ưu đãi khủng',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    'Xem thưc đơn',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  itemCount: 15,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: const EdgeInsets.all(8),
                        child: Image.asset("assets/Pizza/Pizza_Gap_Doi_Nhan_Phu_Hai_San_Xot_Pesto.jpg"));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
