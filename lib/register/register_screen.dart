import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:email_validator/email_validator.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
  bool _isVisible = false;
  bool _isVisibleConfirm = false;
  bool _isSuccess = false;
  bool firsValue = false;
  bool _emailCorrect = false;

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

  void validateEmail() {
    final bool isValid = EmailValidator.validate(_emailController.text.trim());
    if (!isValid) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Email không đúng định dạng")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          padding: const EdgeInsets.all(10.0),
          child: Form(
              key: _formKey,
              child: ListView(
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
                    )
                  ]),
                  Row(
                    children: const [
                      Text(
                        "Họ và tên",
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
                    controller: name,
                    decoration: InputDecoration(
                        hintText: "Họ và tên",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide())),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Nhập họ và tên của bạn";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Tên tài khoản",
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
                    decoration: InputDecoration(
                        hintText: "amen123",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide())),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Hãy nhập tên tài khoản của bạn";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: SizedBox(
                      child: Row(children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    "Ngày sinh",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                  Text(
                                    "*",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.red),
                                  )
                                ],
                              ),
                              TextFormField(
                                controller: dateController,
                                decoration: InputDecoration(
                                  hintText: "Ngày sinh",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide()),
                                ),
                                readOnly: true,
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2101));
                                  if (pickedDate != null) {
                                    String formattedDate =
                                        DateFormat("dd-MM-yyyy")
                                            .format(pickedDate);
                                    setState(() {
                                      dateController.text =
                                          formattedDate.toString();
                                    });
                                  } else {
                                    print("Not select");
                                  }
                                },
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Nhập ngày sinh";
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Column(children: [
                            Row(
                              children: const [
                                Text(
                                  "Giới tính",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                                Text(
                                  "*",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.red),
                                )
                              ],
                            ),
                            DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              value: dropdownValue,
                              items: <String>[
                                'Nam',
                                'Nữ',
                                'Khác'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                              },
                            ),
                          ]),
                        )
                      ]),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Số điện thoại",
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
                    controller: _phoneNumber,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide())),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Nhập số điện thoại";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Địa chỉ",
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
                    decoration: InputDecoration(
                        hintText: "Địa chỉ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide())),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Nhập địa chỉ";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: SizedBox(
                      child: Row(children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    "Mật khẩu",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                  Text(
                                    "*",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.red),
                                  )
                                ],
                              ),
                              TextField(
                                onChanged: (password) =>
                                    onPasswordChanged(password),
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
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: _isSuccess
                                            ? Colors.green
                                            : Colors.red,
                                      ),
                                    ),
                                    hintText: "Mật khẩu"),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Column(children: [
                            Row(
                              children: const [
                                Text(
                                  "Xác nhận mật khẩu",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                                Text(
                                  "*",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.red),
                                )
                              ],
                            ),
                            TextFormField(
                              controller: _confirmPassWordController,
                              obscureText: _isVisibleConfirm,
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isVisibleConfirm = !_isVisibleConfirm;
                                      });
                                    },
                                    icon: _isVisibleConfirm
                                        ? const Icon(
                                            Icons.visibility,
                                            color: Colors.black,
                                          )
                                        : const Icon(
                                            Icons.visibility_off,
                                            color: Colors.grey,
                                          ),
                                  ),
                                  hintText: "Xác nhận mật khẩu",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide())),
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return "Xác nhận mật khẩu của bạn";
                                }
                                if (_passWordcontroller.text !=
                                    _confirmPassWordController.text) {
                                  return "Mật khẩu không khớp";
                                }
                                return null;
                              },
                            ),
                          ]),
                        )
                      ]),
                    ),
                  ),
                  const SizedBox(
                    child: Text(
                      "Mật khẩu bao gồm:",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.red,
                          fontWeight: FontWeight.w100),
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
                            color: _hasPasswordOneNumber
                                ? Colors.green
                                : Colors.transparent,
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
                            color: _hasUpperCase
                                ? Colors.green
                                : Colors.transparent,
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
                            color: _hasSpecialCharacters
                                ? Colors.green
                                : Colors.transparent,
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
                    validator: (email) => !EmailValidator.validate(email!)
                        ? "Nhập email của bạn"
                        : null,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
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
                            "Tôi đồng ý với các điều khoản của Pizza Hut Việt Nam",style: TextStyle(fontSize: 12),),
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
                        validateEmail();
                      },
                      child: const Text("Tiếp theo"))
                ],
              )),
        ));
  }
}
