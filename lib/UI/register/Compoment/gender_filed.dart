import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/register_controller.dart';


class GenderFiled extends  GetView<RegisterController> {
  String dropdownValue = "Khác";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Text(
              "Giới tính",
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
            Text(
              "*",
              style: TextStyle(fontSize: 15, color: Colors.red),
            )
          ],
        ),
        const SizedBox(
          height: 3,
        ),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
          value: dropdownValue,
          items: <String>['Nam', 'Nữ', 'Khác']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(fontSize: 15),
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            // setState(() {
            //   dropdownValue = newValue!;
            // });
          },
        ),
      ],
    );
  }
}
