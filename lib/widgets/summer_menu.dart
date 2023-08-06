import 'package:btl_flutter/controller/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SummerMenu extends GetView<HomePageController> {
  final TextEditingController tex1 = TextEditingController();
  final TextEditingController tex2 = TextEditingController();

  String dropdownValue1 = 'Nhỏ';
  String dropdownValue2 = 'Đế Giòn Xốp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 8,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.51),
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: const Color.fromARGB(255, 154, 152, 152)
                          .withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 2)
                ]),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6)),
                  child: SizedBox.fromSize(
                      child: Image.asset(
                    'assets/SummerMenu/Pizza_Thit_Bo_va_Hai_San.jpg',
                  ) //height: 80.sp,fit: BoxFit.fitWidth,),
                      ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 10, right: 8, bottom: 8, top: 8),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Expanded(
                              flex: 6,
                              child: Text(
                                "Piza Hải Sản Thịt Bò",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(),
                            )
                          ],
                        ),
                        const Text(
                          "Cơm chiên tôm vị cay trên nền xốt vơ tỏi độc đáo của Pizza Hut,Cơm chiên tôm vị cay trên nền xốt vơ tỏi độc đáo của Pizza Hut",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 5.sp,
                            ),
                            Text(
                              "Chọn cỡ bánh",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 6.sp, bottom: 8.sp),
                          padding: EdgeInsets.only(left: 15.sp),
                          //width: 200,
                          height: 30.sp,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color:
                                        const Color.fromARGB(255, 154, 152, 152)
                                            .withOpacity(0.4),
                                    spreadRadius: 1,
                                    blurRadius: 2)
                              ]),
                          child: DropdownButton<String>(
                            value: dropdownValue1,
                            isExpanded: true,
                            underline: Container(),
                            items: <String>['Nhỏ', 'Vừa', 'Lớn']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: const TextStyle(fontSize: 15),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              dropdownValue1 = newValue!;
                            },
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 5.sp,
                            ),
                            Text(
                              "Chọn đế viền",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 6, bottom: 16),
                          padding: const EdgeInsets.only(left: 15),
                          // width: 200,
                          height: 30.sp,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color:
                                        const Color.fromARGB(255, 154, 152, 152)
                                            .withOpacity(0.4),
                                    spreadRadius: 1,
                                    blurRadius: 2)
                              ]),
                          child: DropdownButton<String>(
                            value: dropdownValue2,
                            isExpanded: true,
                            underline: Container(),
                            items: <String>[
                              'Đế Giòn Xốp',
                              'Đế Kéo Tay Truyền Thống',
                              'Đế Mỏng Giòn'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(fontSize: 15.sp),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              dropdownValue2 = newValue!;
                            },
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      minimumSize:
                                          MaterialStateProperty.all<Size>(
                                              Size(150.sp, 50.sp)),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.green),
                                      overlayColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.teal),
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              const Color.fromARGB(
                                                  255, 246, 205, 205)),
                                    ),
                                    child: Text(
                                      "Thêm 129,000đ",
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300),
                                    ))),
                          ],
                        ),
                      ]),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
