import 'package:btl_flutter/register/register_screen.dart';
import 'package:flutter/material.dart';

class BtnLogin extends StatelessWidget {
  const BtnLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 177,
      height: 53,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 177,
              height: 53,
              decoration: ShapeDecoration(
                color: const Color(0xFFE91414),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ),
          TextButton(
             onPressed: () {
               Navigator.push(context,MaterialPageRoute(builder: (context)=>RegisterScreen()));
             }, child:
            const Text('LOGIN',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w900,
                letterSpacing: 1.62,
              ),),
          ),
        ],
      ),
    );
  }
}
