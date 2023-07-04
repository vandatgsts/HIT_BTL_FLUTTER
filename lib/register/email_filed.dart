import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
class EmailFiled extends StatefulWidget {
  const EmailFiled({super.key});

  @override
  State<EmailFiled> createState() => _EmailFiledState();
}

class _EmailFiledState extends State<EmailFiled> {
  final TextEditingController _emailController = TextEditingController();
   void validateEmail() {
    final bool isValid = EmailValidator.validate(_emailController.text.trim());
    if (!isValid) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Email không đúng định dạng")));
    }
  }
  @override
  
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Text(
              "Email",
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
            Text(
              "*",
              style: TextStyle(fontSize: 15, color: Colors.red),
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          controller: _emailController,
          decoration: InputDecoration(
            hintText: "Email",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide()),
          ),
          keyboardType: TextInputType.emailAddress,
          autofillHints: const [AutofillHints.email],
          validator: (email) =>
              !EmailValidator.validate(email!) ? "Nhập email của bạn" : null,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
