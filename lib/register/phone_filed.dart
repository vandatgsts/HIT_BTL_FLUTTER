import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '';

class PhoneFiled extends StatefulWidget {
  const PhoneFiled({super.key});

  @override
  State<PhoneFiled> createState() => _PhoneFiledState();
}

class _PhoneFiledState extends State<PhoneFiled> {
  final TextEditingController _phoneNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Text(
              "Số điện thoại",
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
          controller: _phoneNumber,
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: InputDecoration(
            hintText: "Số điện thoại",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide())),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Nhập số điện thoại";
            }
            return null;
          },
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
