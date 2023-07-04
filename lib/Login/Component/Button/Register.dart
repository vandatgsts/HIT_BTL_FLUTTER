import 'package:flutter/material.dart';
import '../../Screen/TestScreen.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => TestScreen()));
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
