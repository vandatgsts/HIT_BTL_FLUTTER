import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
class UserNameFiled extends StatefulWidget {
  const UserNameFiled({super.key});

  @override
  State<UserNameFiled> createState() => _UserNameFiledState();
}

class _UserNameFiledState extends State<UserNameFiled> {
  final TextEditingController userNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Text(
              "Tên tài khoản",
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
          controller: userNameController,
          decoration: InputDecoration(
              hintText: "Tên tài khoản",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide())),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Nhập tên tài khoản của bạn";
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
