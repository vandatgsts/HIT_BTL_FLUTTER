import 'package:flutter/material.dart';

import 'package:pizza/register/address_filed.dart';
import 'package:pizza/register/confirmpassword_filed.dart';
import 'package:pizza/register/gender_filed.dart';
import 'package:pizza/register/name_filed.dart';
import 'package:pizza/register/notepassword_filed.dart';
import 'package:pizza/register/password_filed.dart';
import 'package:pizza/register/phone_filed.dart';
import 'package:pizza/register/username_filed.dart';
import 'package:pizza/register/date_filed.dart';
import 'package:pizza/register/email_filed.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:email_validator/email_validator.dart';

class demo extends StatefulWidget {
  const demo({super.key});

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  final _formKey = GlobalKey<FormState>();
  
  final TextEditingController name = TextEditingController();
  final TextEditingController userName = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController _passWordcontroller = TextEditingController();
  final TextEditingController _confirmPassWordController =
      TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  String dropdownValue = "Khác";
  bool firsValue = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.grey,
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logopizzahut.jpg',
                  fit: BoxFit.cover,
                  height: 40,
                  width: 180,
                )
              ],
            ),
            backgroundColor: Colors.white,
          ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Form(
                child: ListView(
              key: _formKey,
              children: [
                Column(children: const [
                  Text(
                    "Đăng ký",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "Vui lòng điền mẫu đơn đăng ký bên dưới",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.w100),
                  ),
                ]),
                NameField(),
                UserNameFiled(),
                SizedBox(
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: DateFiled(),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: GenderFiled(),
                      )
                    ],
                  ),
                ),
                PhoneFiled(),
                AddressFiled(),
                SizedBox(
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: const PasswordFiled(),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: const ConfirmPasswordFiled(),
                      )
                    ],
                  ),
                ),
                NotePasswordFiled(),
                EmailFiled(),
                Column(children: [
                  Row(
                    children: [
                      Checkbox(
                          value: firsValue,
                          checkColor: Colors.white,
                          activeColor: Colors.green,
                          onChanged: (bool? value1) {
                            setState(() {
                              firsValue = value1!;
                            });
                          }),
                      const Text(
                        "Tôi đồng ý với các điều khoản của Pizza Hut Việt Nam",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  )
                ]),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 60, 186, 64)),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print("da nhap");
                        print(name.text);
                      } else {
                        print("Chua nhap");
                      }
                    },
                    child: const Text("Tiếp theo"))
              ],
            )),
          )),
    );
  }
}
