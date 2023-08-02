import 'package:flutter/material.dart';

class InputText1 extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  InputText1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 23,
      child: TextFormField(
        controller: emailController,
        textAlign: TextAlign.left,
        style: const TextStyle(
          color: Color(0x891c1a1a),
        ),
        decoration: const InputDecoration(
          hintText: 'Email',
          hintStyle: TextStyle(
            color: Color(0xFFD0D0D0),
            fontSize: 20,
            fontFamily: 'Blinker',
            fontWeight: FontWeight.w400,
          ),
          prefixIcon: Align(
              widthFactor: 1.0, heightFactor: 1.0, child: Icon(Icons.person)),
        ),
      ),
    );
  }
}
