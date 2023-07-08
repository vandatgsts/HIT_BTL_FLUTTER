import 'package:btl_flutter/register/register_screen.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
        },
        child: const Text(
          'Sign Up',
          style: TextStyle(
            fontSize: 15,
          ),
        )
    );
  }
}
