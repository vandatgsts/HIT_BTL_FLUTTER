import 'package:flutter/material.dart';

import '../bottom/bottom_appetizer.dart';
import '../bottom/bottom_drink_can.dart';
import '../bottom/bottom_pizza.dart';

class KidsBoxDetaiScreen extends StatelessWidget {
  const KidsBoxDetaiScreen({super.key});

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
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Image.asset("assets/KidsBox/KIDS_BOX_89K.jpg"),
            ),
            const Row(
              children: [
                Text(
                  "KIDS MY BOX 1",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "Dành cho 1-2 người",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                          "01 Piza Gà Nướng Nấm/Phô Mai Cao Cấp/ Pepperoni(Cỡ nhỏ)",
                          style: TextStyle(color: Colors.black, fontSize: 16)),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                          "01 Bánh Mì Bơ Tỏi/Bánh Cuộn Phô Mai/ Khoai Tây Chiên",
                          style: TextStyle(color: Colors.black, fontSize: 16))
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    padding: EdgeInsets.fromLTRB(18, 0, 5, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.black, width: 1),
                        boxShadow: [BoxShadow(color: Colors.grey)]),
                    child: const Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Text(
                            "Chọn 1 bánh Piza",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                        Expanded(flex: 1, child: BottomPizza())
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    padding: EdgeInsets.fromLTRB(18, 0, 5, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.black, width: 1),
                        boxShadow: [BoxShadow(color: Colors.grey)]),
                    child: const Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Text(
                            "Chọn 1 món ăn kèm",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                        Expanded(flex: 1, child: BottomAppetizer())
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    padding: EdgeInsets.fromLTRB(18, 0, 5, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.black, width: 1),
                        boxShadow: [BoxShadow(color: Colors.grey)]),
                    child: const Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Text(
                            "Chọn thức uống",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                        Expanded(flex: 1, child: BottomDrinkCan())
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
