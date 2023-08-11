import 'package:btl_flutter/CallAPI/Model/bogo.dart';
import 'package:btl_flutter/controller/cart_controller.dart';
import 'package:btl_flutter/detail/choose.dart';
import 'package:btl_flutter/dialog/choose_appetizer.dart';
import 'package:btl_flutter/dialog/select.dart';
import 'package:btl_flutter/dialog/select_drink.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViHeDetailScreen extends StatefulWidget {
  final BOGO bogoItem;
  const ViHeDetailScreen({super.key, required this.bogoItem});

  @override
  State<ViHeDetailScreen> createState() => _ViHeDetailScreenState();
}

class _ViHeDetailScreenState extends State<ViHeDetailScreen> {
  List<String> itemList = [
    'Đế Giòn Xốp',
    'Đế Kéo Tay Truyền Thống',
    'Đế Mỏng Giòn'
  ];
  String selectedValue = '';
  bool showGridView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            )),
        title: const Center(
            child: Text(
          "Tùy chỉnh Combo",
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400),
        )),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Image.network(widget.bogoItem.image ?? ''),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                children: [
                  Text(
                    widget.bogoItem.name ?? ' ',
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                 
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
              child: Column(
                children: [
                  Text(
                    widget.bogoItem.description ?? '',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )
                ],
              ),
            ),
            Select(),
            Choose_Appetizer(),
            Select_drink(),
          
            SizedBox(height: 10,),
            ElevatedButton(
                onPressed: () {
                  if(!Get.isRegistered<CartController>()){
                      Get.put(CartController());
                  }
                  Get.find<CartController>().listItem.add(
                   "jkljjj"
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 41, 128, 42),
                  padding: EdgeInsets.symmetric(
                      horizontal:
                          16.0), // Tăng padding ngang để tạo khoảng cách với lề màn hình
                  minimumSize: Size(250,
                      60), // Sử dụng minimumSize để làm nút button chiếm hết chiều ngang
                ),
                child: Text(
                  "Thêm vào giỏ hàng",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
