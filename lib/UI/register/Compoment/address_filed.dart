import 'package:btl_flutter/controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressFiled extends GetView<RegisterController>{
  const AddressFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
              "Địa chỉ",
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
            Text(
              "*",
              style: TextStyle(fontSize: 15, color: Colors.red),
            )
          ],
        ),
         SizedBox(
          height: 5.sp,
        ),
        TextFormField(
          decoration: InputDecoration(
              hintText: "Địa chỉ",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide())),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Nhập địa chỉ";
            }
            return null;
          },
        ),
        SizedBox(
          height: 10.sp,
        )
      ],
    );
  }
}
