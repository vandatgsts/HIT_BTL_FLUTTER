import 'package:flutter/material.dart';

import '../detail/vihe_detail_screen.dart';

class ViHe extends StatelessWidget {
  const ViHe({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
        children: [
          TiecBanBeVuiHoiHe(context),
          NhanDoiViHe(),
          ThemNhietMuaHe(),
          HeNgonBatTan(),
        ],
      ));
  
  }


  Container HeNgonBatTan() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 154, 152, 152).withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 4)
          ]),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(6), topRight: Radius.circular(6)),
            child: SizedBox.fromSize(
              child: Image.asset(
                'assets/ViHe/4.jpg',
              ),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 12, right: 12, bottom: 8, top: 8),
            child: Column(children: [
              Row(
                children: [
                  const Expanded(
                    flex: 6,
                    child: Text(
                      "HÈ NGON BẤT TẬN",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 249, 190, 12),
                        ),
                        child: const Text(
                          "NEW",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              ),
              const Divider(
                color: Colors.grey,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Row(
                        children: const [
                          Text(
                            "Từ: ",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          Text(
                            "419,000đ",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 43, 132, 45),
                              minimumSize: Size(45, 40)),
                          child: const Text(
                            "Chọn",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ))),
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }

  Container ThemNhietMuaHe() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 154, 152, 152).withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 4)
          ]),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(6), topRight: Radius.circular(6)),
            child: SizedBox.fromSize(
              child: Image.asset(
                'assets/ViHe/3.jpg',
              ),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 12, right: 12, bottom: 8, top: 8),
            child: Column(children: [
              Row(
                children: [
                  const Expanded(
                    flex: 6,
                    child: Text(
                      "THÊM NHIỆT MÙA HÈ",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 249, 190, 12),
                        ),
                        child: const Text(
                          "NEW",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              ),
              const Divider(
                color: Colors.black,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Row(
                        children: const [
                          Text(
                            "Từ: ",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          Text(
                            "369,000đ",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 43, 132, 45),
                              minimumSize: Size(45, 40)),
                          child: const Text(
                            "Chọn",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ))),
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }

  Container NhanDoiViHe() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 154, 152, 152).withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 4)
          ]),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(6), topRight: Radius.circular(6)),
            child: SizedBox.fromSize(
              child: Image.asset(
                'assets/ViHe/2.jpg',
              ),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 12, right: 12, bottom: 8, top: 8),
            child: Column(children: [
              Row(
                children: [
                  const Expanded(
                    flex: 4,
                    child: Text(
                      "NHÂN ĐÔI VỊ HÈ",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 249, 190, 12),
                        ),
                        child: const Text(
                          "NEW",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              ),
              const Divider(
                color: Colors.black,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Row(
                        children: const [
                          Text(
                            "Từ: ",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          Text(
                            "289,000đ",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 43, 132, 45),
                              minimumSize: Size(45, 40)),
                          child: const Text(
                            "Chọn",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ))),
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }

  Container TiecBanBeVuiHoiHe(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 159, 159, 159).withOpacity(0.8),
                spreadRadius: 1,
                blurRadius: 4)
          ]),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(6), topRight: Radius.circular(6)),
            child: SizedBox.fromSize(
              child: Image.asset(
                'assets/ViHe/1.jpg',
              ),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 12, right: 12, bottom: 8, top: 8),
            child: Column(children: [
              Row(
                children: [
                  const Expanded(
                    flex: 4,
                    child: Text(
                     'TIỆC BẠN BÈ VUI HỘI HÈ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ViHeDetailScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 249, 190, 12),
                        ),
                        child: const Text(
                          "NEW",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              ),
              const Divider(
                color: Colors.black,
              ),
              Row(
                children: [
                  const Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          Text(
                            "Từ: ",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          Text(
                            "269,000đ",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ViHeDetailScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: const Color.fromARGB(255, 41, 128, 42),
                              minimumSize: Size(45, 40)),
                          child: const Text(
                            "Chọn",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ))),
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
