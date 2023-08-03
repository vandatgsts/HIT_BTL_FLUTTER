import 'package:btl_flutter/controller/state_main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login/Component/Logo/Logo.dart';

class StateMainScreen extends GetView<StateMainController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Obx(() => controller.screens[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business, color: Colors.grey),
            label: 'Thực đơn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school, color: Colors.grey),
            label: 'Giảm giá',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.grey),
            label: 'Tài Khoản',
          ),
        ],
        currentIndex: controller.selectedIndex.value,
        selectedItemColor: Colors.blue,
        onTap: controller.onItemTapped,
      )),
    );
  }
}