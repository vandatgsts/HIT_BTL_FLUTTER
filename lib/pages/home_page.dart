import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:menu_pizza/widgets/combo_kidsbox.dart';
import 'package:menu_pizza/widgets/combo_limo_combo.dart';
import 'package:menu_pizza/widgets/combo_mua1duoc3.dart';
import 'package:menu_pizza/widgets/combo_mybox.dart';
import 'package:menu_pizza/widgets/combo_vihe.dart';

import 'package:menu_pizza/widgets/menu49k.dart';
import 'package:menu_pizza/widgets/monkhaivi.dart';
import 'package:menu_pizza/widgets/my_y_va_com.dart';
import 'package:menu_pizza/widgets/pizza.dart';
import 'package:menu_pizza/widgets/summer_menu.dart';
import 'package:menu_pizza/widgets/thucuong.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 11,
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
            ),
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
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.cart,
                  size: 32,
                  color: Colors.black,
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
                color: Color.fromARGB(255, 216, 45, 96),
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
          backgroundColor: Color.fromARGB(255, 245, 242, 242),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
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
