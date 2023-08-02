import 'package:flutter/material.dart';

class InputPassword extends StatelessWidget {
  final TextEditingController passwordController = TextEditingController();

  InputPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 23,
      child: TextFormField(
        controller: passwordController,
        textAlign: TextAlign.left,
        style: const TextStyle(
          color: Colors.black,
        ),
        decoration: const InputDecoration(
            hintText: 'Mật khẩu',
            hintStyle: TextStyle(
              color: Color(0xFFD0D0D0),
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            prefixIcon: Align(
                widthFactor: 1.0, heightFactor: 1.0, child: Icon(Icons.lock)),
            suffixIcon: Icon(Icons.remove_red_eye)),
        obscureText: true,
      ),
    );
  }
}
