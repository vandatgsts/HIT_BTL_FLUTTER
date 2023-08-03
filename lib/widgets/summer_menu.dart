import 'package:flutter/material.dart';

class SummerMenu extends StatefulWidget {
  const SummerMenu({super.key});

  @override
  State<SummerMenu> createState() => _SummerMenuState();
}

class _SummerMenuState extends State<SummerMenu> {
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
            childAspectRatio: 0.57),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color:
                          Color.fromARGB(255, 154, 152, 152).withOpacity(0.4),
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
                    ),
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
                        const Row(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Chọn cỡ bánh",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 6, bottom: 8),
                          padding: EdgeInsets.only(left: 15),
                          //width: 200,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 154, 152, 152)
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
                                  style: TextStyle(fontSize: 15),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue1 = newValue!;
                              });
                            },
                          ),
                        ),
                        const Row(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Chọn đế viền",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 6, bottom: 16),
                          padding: EdgeInsets.only(left: 15),
                          // width: 200,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 154, 152, 152)
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
                                  style: TextStyle(fontSize: 15),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue2 = newValue!;
                              });
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
                                              Size(150, 50)),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.green),
                                      overlayColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.teal),
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Color.fromARGB(
                                                  255, 246, 205, 205)),
                                    ),
                                    child: const Text(
                                      "Thêm 129,000đ",
                                      style: TextStyle(
                                          fontSize: 16,
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
