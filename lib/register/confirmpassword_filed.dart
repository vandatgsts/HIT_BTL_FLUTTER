import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class ConfirmPasswordFiled extends StatefulWidget {
  const ConfirmPasswordFiled({super.key});

  @override
  State<ConfirmPasswordFiled> createState() => _ConfirmPasswordFiledState();
}

class _ConfirmPasswordFiledState extends State<ConfirmPasswordFiled> {
  final TextEditingController _confirmPassWordController =
      TextEditingController();
  final TextEditingController _passWordcontroller = TextEditingController();
  bool _isVisibleConfirm = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Text(
              "Xác nhận mật khẩu",
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
            Text(
              "*",
              style: TextStyle(fontSize: 15, color: Colors.red),
            )
          ],
        ),
        TextFormField(
          controller: _confirmPassWordController,
          obscureText: _isVisibleConfirm,
          decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _isVisibleConfirm = !_isVisibleConfirm;
                  });
                },
                icon: _isVisibleConfirm
                    ? const Icon(
                        Icons.visibility,
                        color: Colors.black,
                      )
                    : const Icon(
                        Icons.visibility_off,
                        color: Colors.grey,
                      ),
              ),
              hintText: "Xác nhận mật khẩu",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide())),
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return "Xác nhận mật khẩu của bạn";
            }
            if (_passWordcontroller.text != _confirmPassWordController.text) {
              return "Mật khẩu không khớp";
            }
            return null;
          },
        ),
      ],
    );
  }
}
