import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/cart_controller.dart';

class ShoppingCartScreen extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.listItem.length,
          itemBuilder: (context, index) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Product Name: ${controller.listItem.value[index].disPlayName}'),
              Text('Price: ${controller.listItem.value[index].price}'),
              // Text('Product Price: ${controller.productPrice}'),
              // Add other shopping cart components here
            ],
          ),
        ),
      ),
    );
  }
}
