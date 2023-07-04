import 'package:flutter/material.dart';

class TextLogin extends StatelessWidget {
  const TextLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Sign In',
      style: TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.bold
      ),
    );
  }
}