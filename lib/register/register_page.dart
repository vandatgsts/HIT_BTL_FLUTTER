import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController name = TextEditingController();
  final TextEditingController userName = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  String dropdownValue = "Nam";
  bool _isVisible = false;
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
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Đăng ký",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  Row(
                    children: const [
                      Text(
                        "Họ và tên",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                        hintText: "Tên của bạn",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide())),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Hãy nhập tên của bạn";
                      }
                      return null;
                    },
                  ),
                  const Text(
                    "Tên tài khoản",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: userName,
                    decoration: InputDecoration(
                        hintText: "Tên tài khoản của bạn",
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
                  const Text(
                    "Ngày Sinh",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
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
                            DateFormat("dd-MM-yyyy").format(pickedDate);
                        setState(() {
                          dateController.text = formattedDate.toString();
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
                  const Text(
                    "Giới tính",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_drop_down),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: const [
                          DropdownMenuItem<String>(
                            value: "Khác",
                            child: Text("Khác"),
                          ),
                          DropdownMenuItem<String>(
                            value: "Nữ",
                            child: Text("Nữ"),
                          ),
                          DropdownMenuItem<String>(
                            value: "Nam",
                            child: Text("Nam"),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const Text(
                    "Số điện thoại",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: userName,
                    decoration: InputDecoration(
                        hintText: "Số điện thoại",
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
                  const Text(
                    "Địa chỉ",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: userName,
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

                  const Text(
                    "Mật khẩu",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  TextField(
                    onChanged: (password) => onPasswordChanged(password),
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
                          borderSide: const BorderSide(),
                        ),
                        hintText: "Mật khẩu"),
                  ),

                  const SizedBox(
                    height: 20,
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
                  //Xác nhận mật khẩu dùng thư viện
                  // SizedBox(
                  //   height: 160,
                  //   child: Column(children: [
                  //     const SizedBox(
                  //       height: 10,
                  //     ),
                  //     FlutterPwValidator(
                  //       controller: _passWordcontroller,
                  //       uppercaseCharCount: 1,
                  //       numericCharCount: 1,
                  //       specialCharCount: 1,
                  //       lowercaseCharCount: 1,
                  //       width: 350,
                  //       height: 140,
                  //       minLength: 8,
                  //       onSuccess: () {
                  //         setState(() {
                  //           _isSuccess = true;
                  //         });
                  //         ScaffoldMessenger.of(context).showSnackBar(
                  //             const SnackBar(
                  //                 content: Text("Password is matched")));
                  //       },
                  //       onFail: () {
                  //         setState(() {
                  //           _isSuccess = false;
                  //         });
                  //       },
                  //     )
                  //   ]),
                  // ),

                  // Row(
                  //   children: [
                  //     Column(
                  //       children: [
                  //         Text("Mật khẩu",style: TextStyle(fontSize: 18,color: Colors.black),),
                  //         TextField(

                  //           decoration: InputDecoration(
                  //           suffixIcon: IconButton(
                  //             onPressed: (){},
                  //             icon:_isVisible ?  Icon(Icons.visibility):Icon(Icons.visibility)
                  //           ),
                  //           border: OutlineInputBorder(
                  //             borderRadius:BorderRadius.circular(10),
                  //             borderSide: BorderSide()
                  //             ),
                  //             hintText: "Mật khẩu",
                  //             contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20)
                  //           ),

                  //         )
                  //       ],
                  //     ),
                  //      Column(
                  //       children: [
                  //         Text("Xác nhận mật khẩu",style: TextStyle(fontSize: 18,color: Colors.black),),
                  //         TextField(

                  //           decoration: InputDecoration(
                  //           suffixIcon: IconButton(
                  //             onPressed: (){},
                  //             icon:_isVisible ?  Icon(Icons.visibility):Icon(Icons.visibility)
                  //           ),
                  //           border: OutlineInputBorder(
                  //             borderRadius:BorderRadius.circular(10),
                  //             borderSide: BorderSide()
                  //             ),
                  //             hintText: "Xác nhận mật khẩu",
                  //             contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20)
                  //           ),

                  //         )
                  //       ],
                  //     )
                  //   ],
                  // ),
                  const SizedBox(
                    height: 10,
                  ),
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
                      child: const Text("Tiếp tục"))
                ],
              )),
        ));
  }
}
