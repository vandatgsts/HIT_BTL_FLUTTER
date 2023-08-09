import 'package:btl_flutter/UI/Widget/app_image_widget.dart';
import 'package:btl_flutter/UI/login/Component/Logo/Logo.dart';
import 'package:btl_flutter/controller/discount_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Data/Product.dart';

class DiscoutScreen extends GetView<DiscountController> {
  const DiscoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(child: Logo()),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.sp,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10.sp,
                  ),
                  Text(
                    'Điểm hiện tại của bạn ',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  ),
                  SizedBox(
                    width: 5.sp,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                  )
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                  height: 35.sp,
                  width: 80.sp,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5.sp)),
                  child: Text(
                    '3000',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
                itemCount: controller.listProduct.length,
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.all(5.sp),
                      child: ItemList(controller.listProduct.value[index]));
                }),
          )
        ],
      ),
    );
  }
}

class ItemList extends GetView<DiscountController> {
  Product product;

  ItemList(this.product);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      leading: Expanded(child: AppImageWidget.network(path: product.image,fit: BoxFit.fitHeight,)),
      title: Text(
        'Đổi 1 ${product.productName}',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Container(
        color: Colors.green,
        child: TextButton(
          onPressed: () {},
          child: Text(
            product.point.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
