import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NotePasswordFiled extends StatefulWidget {
  const NotePasswordFiled({super.key});

  @override
  State<NotePasswordFiled> createState() => _NotePasswordFiledState();
}

class _NotePasswordFiledState extends State<NotePasswordFiled> {
  bool _isPasswordEightCharacters = false;
  bool _hasPasswordOneNumber = false;
  bool _hasUpperCase = false;
  bool _hasSpecialCharacters = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          child: Text(
            "Mật khẩu bao gồm:",
            style: TextStyle(
                fontSize: 15, color: Colors.red, fontWeight: FontWeight.w100),
          ),
        ),
        Row(
          children: [
            AnimatedContainer(
              duration: const Duration(microseconds: 500),
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  color: _isPasswordEightCharacters
                      ? Colors.green
                      : Colors.transparent,
                  border: _isPasswordEightCharacters
                      ? Border.all(color: Colors.transparent)
                      : Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(50)),
              child: const Center(
                  child: Icon(
                Icons.check,
                color: Colors.white,
                size: 15,
              )),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text("Bao gồm 8 kí tự")
          ],
        ),
        Row(
          children: [
            AnimatedContainer(
              duration: const Duration(microseconds: 500),
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  color:
                      _hasPasswordOneNumber ? Colors.green : Colors.transparent,
                  border: _hasPasswordOneNumber
                      ? Border.all(color: Colors.transparent)
                      : Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(50)),
              child: const Center(
                  child: Icon(
                Icons.check,
                color: Colors.white,
                size: 15,
              )),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text("Chứa ít nhất 1 số")
          ],
        ),
        Row(
          children: [
            AnimatedContainer(
              duration: const Duration(microseconds: 500),
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  color: _hasUpperCase ? Colors.green : Colors.transparent,
                  border: _hasUpperCase
                      ? Border.all(color: Colors.transparent)
                      : Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(50)),
              child: const Center(
                  child: Icon(
                Icons.check,
                color: Colors.white,
                size: 15,
              )),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text("Chứa ít nhất 1 kí tự  hoa")
          ],
        ),
        Row(
          children: [
            AnimatedContainer(
              duration: const Duration(microseconds: 500),
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  color:
                      _hasSpecialCharacters ? Colors.green : Colors.transparent,
                  border: _hasSpecialCharacters
                      ? Border.all(color: Colors.transparent)
                      : Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(50)),
              child: const Center(
                  child: Icon(
                Icons.check,
                color: Colors.white,
                size: 15,
              )),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text("Chứa ít nhất 1 kí tự đặc biệt")
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
