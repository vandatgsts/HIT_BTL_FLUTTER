import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AddressFiled extends StatefulWidget {
  const AddressFiled({super.key});

  @override
  State<AddressFiled> createState() => _AddressFiledState();
}

class _AddressFiledState extends State<AddressFiled> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
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
        const SizedBox(
          height: 5,
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
          height: 10,
        )
      ],
    );
  }
}
