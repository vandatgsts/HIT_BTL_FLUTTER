import 'package:btl_flutter/AppRouter/AppRouter.dart';
import 'package:btl_flutter/UI/Widget/app_image_widget.dart';
import 'package:btl_flutter/res/AppImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:email_validator/email_validator.dart';
import 'package:get/get.dart';
import '../../../controller/register_controller.dart';

class RegisterScreen extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              // Get.back();
              Get.toNamed(AppRouter.forgotPassWord);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
          ),
          title: AppImageWidget.asset(path: AppImage.headerLogo),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
              key: controller.formKey,
              child: ListView(
                children: [
                  const Column(children: [
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
                  const Row(
                    children: [
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
                    controller: controller.name,
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
                  const Row(
                    children: [
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
                              const Row(
                                children: [
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
                                controller: controller.dateController,
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
                                    {
                                      controller.dateController.text =
                                          formattedDate.toString();
                                    }
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
                            const Row(
                              children: [
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
                              value: controller.dropdownValue,
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
                                {
                                  controller.dropdownValue = newValue!;
                                }
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
                  const Row(
                    children: [
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
                    controller: controller.phoneNumber,
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
                  const Row(
                    children: [
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
                              const Row(
                                children: [
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
                              Obx(() =>
                              TextField(
                                onChanged: (password) =>
                                    controller.onPasswordChanged(password),
                                controller: controller.passWordcontroller,
                                obscureText: !controller.isVisible.value,
                                decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        controller.isVisible.value =
                                            !controller.isVisible.value;
                                      },
                                      icon: controller.isVisible.value
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
                                        color: controller.isSuccess.value
                                            ? Colors.green
                                            : Colors.red,
                                      ),
                                    ),
                                    hintText: "Mật khẩu"),
                              ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Column(children: [
                            const Row(
                              children: [
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
                              controller: controller.confirmPassWordController,
                              obscureText: controller.isVisibleConfirm,
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      {
                                        controller.isVisibleConfirm =
                                            !controller.isVisibleConfirm;
                                      }
                                    },
                                    icon: controller.isVisibleConfirm
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
                                if (controller.passWordcontroller.text !=
                                    controller.confirmPassWordController.text) {
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
                        /// goi qua .value
                        decoration: BoxDecoration(
                            color: controller.isPasswordEightCharacters
                                ? Colors.green
                                : Colors.transparent,
                            border: controller.isPasswordEightCharacters
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
                            color: controller.hasPasswordOneNumber
                                ? Colors.green
                                : Colors.transparent,
                            border: controller.hasPasswordOneNumber
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
                            color: controller.hasUpperCase
                                ? Colors.green
                                : Colors.transparent,
                            border: controller.hasUpperCase
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
                            color: controller.hasSpecialCharacters
                                ? Colors.green
                                : Colors.transparent,
                            border: controller.hasSpecialCharacters
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
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: controller.emailController,
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
                        /// bat thay doi va reload lai no
                        Obx(() => Checkbox(
                            value: controller.firsValue.value,
                            checkColor: Colors.white,
                            activeColor: Colors.green,
                            onChanged: (value) {
                              controller.firsValue.value =
                                  !controller.firsValue.value;
                            })),
                        const Text(
                          "Tôi đồng ý với các điều khoản của Pizza Hut Việt Nam",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    )
                  ]),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 60, 186, 64)),
                      onPressed: () {
                        if (controller.formKey.currentState!.validate()) {
                          print("da nhap");
                        } else {
                          print("Chua nhap");
                        }
                        controller.validateEmail();
                      },
                      child: const Text("Tiếp theo"))
                ],
              )),
        ));
  }
}
