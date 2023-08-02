
import 'package:btl_flutter/UI/Main/Compoment/btn_fomart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../login/Component/Logo/Logo.dart';



class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Logo(),
        ),
        actions: const [
          Icon(Icons.notifications),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Pizza_Hut_classic_logo.svg/800px-Pizza_Hut_classic_logo.svg.png',
              fit: BoxFit.fill,
              height: 100,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Chào mừng trở lai',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text('Vui lòng chon Giao Hàng tận nơi hoăc Mua Mang Về'),
              ],
            ),
            const BtnShip(),
            const BtnShip(),
            Container(
              margin: const EdgeInsets.only(left: 10,right: 10),
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
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12),
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
                  itemBuilder:(context,index){
                return Container(
                    margin: const EdgeInsets.all(8),
                    child: Image.network('https://thuthuatnhanh.com/wp-content/uploads/2019/12/anh-anime-dep-de-thuong.jpg'));

              }),
            )
          ],
        ),
      ),
    );
  }
}
