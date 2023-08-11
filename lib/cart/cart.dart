import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final String comboName;
  final double comboPrice;

  const CartScreen({
    required this.comboName,
    required this.comboPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Giỏ hàng"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sản phẩm đã chọn:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "Tên combo: $comboName",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Giá combo: ${comboPrice.toStringAsFixed(2)} VND",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Thực hiện thêm logic xử lý đặt hàng, thanh toán, ...
              },
              child: const Text("Đặt hàng"),
            ),
          ],
        ),
      ),
    );
  }
}
