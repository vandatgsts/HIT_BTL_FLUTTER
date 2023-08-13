import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controller/cart_controller.dart';

class ShoppingCartScreen extends GetView<CartController> {
  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    controller.context=context;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Giỏ Hàng'),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: ListView(
              children: [
                Obx(
                  () => ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.listItem.length,
                      itemBuilder: (context, index) =>
                          ItemCart(controller.listItem.value[index],1)),
                ),
                Obx(
                  () => ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.listItem2.length,
                      itemBuilder: (context, index) =>
                          ItemCart(controller.listItem2.value[index],2)),
                ),
              ],
            ),
          ),
          Positioned(bottom: 0.sp, child: bottom()),
        ],
      ),
    );
  }

  Widget bottom() {
    controller.cacuTotalPrice();
    return Container(
      height: 120.sp,
      decoration: const BoxDecoration(color: Colors.green),
      width: Get.width,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
            child: SizedBox(
              child: Row(children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey, width: 1),
                        color: Colors.white,
                      ),
                      child: Obx(
                        () => DropdownButton<String>(
                          value: controller.typeShip.value,
                          items: <String>['Giao hàng tận nơi', 'Mua tại quán']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: const TextStyle(fontSize: 20),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            controller.typeShip.value = newValue!;
                            controller.cacuTotalPrice();
                          },
                        ),
                      ),
                    ),
                  ],
                )
              ]),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 10.sp,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(
                    () => Text(
                      'Price: ${controller.totalPrice} Vnd',
                      style: TextStyle(
                          fontSize: 25.sp, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              TextButton(
                  onPressed: () => {controller.clearCart()},
                  child: Icon(
                    Icons.shopping_cart,
                    size: 40.sp,
                    color: Colors.white,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

class ItemCart extends GetView<CartController> {
  var item;
  int listNumber;


  ItemCart(this.item, this.listNumber);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(10.sp),
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color:
                    const Color.fromARGB(255, 159, 159, 159).withOpacity(0.8),
                spreadRadius: 1,
                blurRadius: 4)
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  ' ${item.name}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
                SizedBox(height: 5.sp,),
                Text('       ${item.name}'),
                SizedBox(height: 5.sp,),
                Text('       ${item.appertizer ?? ''}'),
                SizedBox(height: 5.sp,),
                Text('       ${item.drink ?? ''}'),
                SizedBox(height: 5.sp,),
                Text('       Giá tiền: ${item.price} VND'),
                // Text('Product Price: ${controller.productPrice}'),
                // Add other shopping cart components here
              ],
            ),
          ),
          IconButton(
              onPressed: () {
                if(listNumber==1) {
                  controller.listItem.remove(item);
                }
                else {
                  controller.listItem2.remove(item);
                }
                controller.cacuTotalPrice();
              },
              icon: Text(
                'X',
                style: TextStyle(fontSize: 20.sp, color: Colors.red),
              ))
        ],
      ),
    );
  }
}
