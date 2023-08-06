import 'package:btl_flutter/detail/choose.dart';
import 'package:flutter/material.dart';

class KidsBoxDetailScreen extends StatefulWidget {
  const KidsBoxDetailScreen({super.key});

  @override
  State<KidsBoxDetailScreen> createState() => _KidsBoxDetailScreenState();
}

class _KidsBoxDetailScreenState extends State<KidsBoxDetailScreen> {
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
              child: Image.asset("assets/KidsBox/KIDS_BOX_89K.jpg"),
            ),
            const Row(
              children: [
                Text(
                  "COMBO KIDS BOX 1",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(
              child: const Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Dành cho 1-2 người",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ],
                  ),
                  Text(
                    "-Lựa chọn 1: 01 Piza Gà Nướng Nấm/01 Pizza Peperroni/01 Pizza Phô Mai Cao Cấp",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "- Lựa chọn 2: Bánh Cuộn Phô Mai/Khoai Tây Chiên/Súp Gà Kem Nấm",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Choose(),
            Choose()
          ],
        ),
      ),
    );
  }
}
