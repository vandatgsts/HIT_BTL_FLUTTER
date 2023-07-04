import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NameField extends StatefulWidget {
  const NameField({super.key});

  @override
  State<NameField> createState() => _NameFieldState();
}

class _NameFieldState extends State<NameField> {
  final TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Text(
              "Họ và tên",
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
          controller: name,
          decoration: InputDecoration(
              hintText: "Họ và tên",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide())),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Nhập họ và tên của bạn";
            }
            return null;
          },
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
