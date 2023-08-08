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
    controller.context=context;
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
            Image.network(
              'https://khoinguonsangtao.vn/wp-content/uploads/2022/08/hinh-anh-anime-ngau-chat-va-nghe-thuat.jpg',
            ),
            SizedBox(
              height: 10.sp,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Chào mừng trở lai',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp),
                ),
                Text(
                  'Vui lòng chon Giao Hàng tận nơi hoăc Mua Mang Về',
                  style: TextStyle(fontSize: 13.sp),
                ),
              ],
            ),
            SizedBox(
              height: 10.sp,
            ),
            const BtnShip(),
            const Btn2(),
            SizedBox(
              height: 10.sp,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Ưu đãi khủng',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {
                      controller.onPressSeeMenu();
                    },
                    child: const Text(
                      'Xem thưc đơn',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
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
                    return InkWell(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        child: Image.network(
                            'https://thuthuatnhanh.com/wp-content/uploads/2019/12/anh-anime-dep-de-thuong.jpg'),
                      ),
                      onTap: (){
                        controller.onPressCombo(index);
                      },
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
