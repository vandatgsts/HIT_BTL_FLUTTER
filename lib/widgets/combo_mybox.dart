import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  const MyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MyBox1(),
          MyBox2(),
          MyBox3(),
          MyBox4(),
          MyBox5(),
          MyBox6(),
        ],
      ),
    );
  }

  Container MyBox6() {
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
                    'assets/MyBox/My_Box_269k_1200x437_new2.jpg',
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
                          "COMBO MY BOX 6",
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
                                "269,000đ",
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

  Container MyBox5() {
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
                    'assets/MyBox/My_Box_249k_1200x437_new2.jpg',
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
                          "COMBO MY BOX 4",
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
                                "249,000đ",
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

  Container MyBox4() {
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
                    'assets/MyBox/My_Box_179k_1200x437_new2.jpg',
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
                          "COMBO MY BOX 4",
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
                                "179,000đ",
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

  Container MyBox3() {
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
                'assets/MyBox/My_Box_159k_1200x437_new2.jpg',
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
                      "COMBO MY BOX 3",
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
                            "159,000đ",
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

  Container MyBox2() {
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
                'assets/MyBox/My_Box_139k_1200x437_new2.jpg',
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
                      "COMBO MY BOX 2",
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
                            "139,000đ",
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

  Container MyBox1() {
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
                'assets/MyBox/My_Box_99k_1200x437_new2.jpg',
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
                      "COMBO MY BOX 1",
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
                            "99,000đ",
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
}
