import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 217,
      height: 57,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://www.saokim.com.vn/blog/wp-content/uploads/2020/03/thiet-ke-logo-Pizza-Hut.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
