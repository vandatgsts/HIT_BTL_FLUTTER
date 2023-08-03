import 'package:flutter/material.dart';
import 'package:menu_pizza/detail/kidsbox_detail_screen.dart';


class KidsBox extends StatelessWidget {
  const KidsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PhanAnChoBe1(context),
          PhanAnChoBe2()
        
        ],
      ),
    );
  }

  Container PhanAnChoBe2() {
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
                'assets/KidsBox/KIDS_BOX_114K.jpg',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
                left: 12, right: 12, bottom: 8, top: 8),
            child: Column(children: [
              Row(
                children: [
                  const Expanded(
                    flex: 6,
                    child: Text(
                      "PHẦN ĂN CHO BÉ 2",
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
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
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
                            style: TextStyle(
                                fontSize: 15, color: Colors.black),
                          ),
                          Text(
                            "114,000đ",
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
                            style: TextStyle(
                                fontSize: 15, color: Colors.white),
                          ))),
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }

  Container PhanAnChoBe1(BuildContext context) {
    return Container(
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color:
                        Color.fromARGB(255, 154, 152, 152).withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 4)
              ]),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(6),
                    topRight: Radius.circular(6)),
                child: SizedBox.fromSize(
                  child: Image.asset(
                    'assets/KidsBox/KIDS_BOX_89K.jpg',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 12, right: 12, bottom: 8, top: 8),
                child: Column(children: [
                  Row(
                    children: [
                      const Expanded(
                        flex: 6,
                        child: Text(
                          "PHẦN ĂN CHO BÉ 1",
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
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    children: [
                      const Expanded(
                          flex: 3,
                          child: Row(
                            children: [
                              Text(
                                "Từ: ",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              ),
                              Text(
                                "89,000đ",
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
                              onPressed: () {
                                 Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KidsBoxDetaiScreen()));
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 43, 132, 45),
                                  minimumSize: Size(45, 40)),
                              child: const Text(
                                "Chọn",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
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
