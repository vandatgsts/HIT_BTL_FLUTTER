import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:get/get.dart';
import '../../../controller/register_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailFiled extends GetView<RegisterController> {
  final TextEditingController _emailController = TextEditingController();
   void validateEmail() {
    final bool isValid = EmailValidator.validate(_emailController.text.trim());
    // if (!isValid) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //       const SnackBar(content: Text("Email không đúng định dạng")));
    // }
  }
  @override
  
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
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
       SizedBox(
          height: 5.sp,
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
