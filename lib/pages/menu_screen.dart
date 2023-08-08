import 'package:btl_flutter/AppRouter/AppRouter.dart';
import 'package:btl_flutter/controller/menu_controller.dart' as menu;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/combo_kidsbox.dart';
import '../widgets/combo_limo_combo.dart';
import '../widgets/combo_mua1duoc3.dart';
import '../widgets/combo_mybox.dart';
import '../widgets/combo_vihe.dart';
import '../widgets/menu49k.dart';
import '../widgets/monkhaivi.dart';
import '../widgets/my_y_va_com.dart';
import '../widgets/pizza.dart';
import '../widgets/summer_menu.dart';
import '../widgets/thucuong.dart';
import 'package:get/get.dart';


class MenuScreen extends GetView<menu.MenuController>{
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 11,
      child: Scaffold(
          appBar: AppBar(
            leading: const SizedBox(),
            centerTitle: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/KidsBox/logopizzahut.jpg',
                  fit: BoxFit.cover,
                  height: 40,
                  width: 180,
                ),
              ],
            ),
            actions: [
              Padding(
                padding:  EdgeInsets.only(right: 20),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.cart,
                    size: 32,
                    color: Colors.black,
                  ),
                ),
              )
            ],
            bottom: TabBar(
              isScrollable: true,
              indicatorPadding:
                  const EdgeInsets.only(bottom: 8, top: 6, left: 5, right: 5),
              labelStyle:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              labelPadding: const EdgeInsets.symmetric(horizontal: 15),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              indicator: BoxDecoration(
                color: const Color.fromARGB(255, 216, 45, 96),
                borderRadius: BorderRadius.circular(8.0),
              ),
              tabs: const [
                Tab(text: "Summer menu"),
                Tab(text: "Vị Hè"),
                Tab(text: "Kids Box"),
                Tab(text: "Mua 1 được 3"),
                Tab(text: "My Box"),
                Tab(text: "LIMO & COMBO"),
                Tab(text: "Pizza"),
                Tab(text: "Mỳ ý và cơm"),
                Tab(text: "Món khai vị"),
                Tab(text: "Thức uống"),
                Tab(text: "Menu 49K"),
              ],
            ),
            backgroundColor: Colors.white,
          ),
          backgroundColor: const Color.fromARGB(255, 245, 242, 242),
          body:  SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                        flex: 1,
                        child: TabBarView(
                          children: [
                            SummerMenu(),
                            ViHe(),
                            KidsBox(),
                            Mua1Duoc3(),
                            MyBox(),
                            LIMO(),
                            Pizza(),
                            MyYvaCom(),
                            MonKhaiVi(),
                            ThucUong(),
                            Menu49K(),
                          ],
                        ))
                  ]),
            ),
          )),
    );
  }
}
