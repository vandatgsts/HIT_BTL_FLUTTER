import 'package:btl_flutter/Login/Screen/TestScreen.dart';
import 'package:flutter/material.dart';



class ForgotPassWord extends StatelessWidget {
  const ForgotPassWord({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => TestScreen())),
        child: const Text(
          'Forgot PassWord',
          style: TextStyle(
            fontSize: 15,
          ),
        ));
  }
}
