import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PasswordFiled extends StatefulWidget {
  const PasswordFiled({super.key});

  @override
  State<PasswordFiled> createState() => _PasswordFiledState();
}

class _PasswordFiledState extends State<PasswordFiled> {
  final TextEditingController _passWordcontroller = TextEditingController();
  bool _isVisible = false;
  bool _isSuccess = false;
  bool _isPasswordEightCharacters = false;
  bool _hasPasswordOneNumber = false;
  bool _hasUpperCase = false;
  bool _hasSpecialCharacters = false;
  onPasswordChanged(String password) {
    final numbericRegex = RegExp(r'[0-9]');
    final specialRegex = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    final upperCaseRegex = RegExp(r'[A-Z]');

    setState(() {
      _isPasswordEightCharacters = false;
      if (password.length >= 8) {
        _isPasswordEightCharacters = true;
      }
      _hasPasswordOneNumber = false;
      if (numbericRegex.hasMatch(password)) {
        _hasPasswordOneNumber = true;
      }
      _hasUpperCase = false;
      if (upperCaseRegex.hasMatch(password)) {
        _hasUpperCase = true;
      }
      _hasSpecialCharacters = false;
      if (specialRegex.hasMatch(password)) {
        _hasSpecialCharacters = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Text(
              "Mật khẩu",
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
            Text(
              "*",
              style: TextStyle(fontSize: 15, color: Colors.red),
            )
          ],
        ),
        TextField(
          onChanged: (password) => onPasswordChanged(password),
          controller: _passWordcontroller,
          obscureText: !_isVisible,
          decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _isVisible = !_isVisible;
                  });
                },
                icon: _isVisible
                    ? const Icon(
                        Icons.visibility,
                        color: Colors.black,
                      )
                    : const Icon(
                        Icons.visibility_off,
                        color: Colors.grey,
                      ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: _isSuccess ? Colors.green : Colors.red,
                ),
              ),
              hintText: "Mật khẩu"),
        ),
      ],
    );
  }
}
