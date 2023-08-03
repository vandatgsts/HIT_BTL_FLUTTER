import 'package:flutter/material.dart';
import 'package:menu_pizza/dialog/dialog.dart';

class BottomPizza extends StatefulWidget {
  const BottomPizza({super.key});

  @override
  State<BottomPizza> createState() => _BottomPizzaState();
}

class _BottomPizzaState extends State<BottomPizza> {
  String _dropdownValue = 'Đế Giòn Xốp';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                  color: const Color.fromARGB(255, 248, 222, 222),
                  child: GridView.builder(
                      itemCount: 8,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 5.0,
                              mainAxisSpacing: 5.0,
                              childAspectRatio: 0.9),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.fromLTRB(15, 20, 15, 10),
                          child: Container(
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
                            child: Column(
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
                                  padding: EdgeInsets.fromLTRB(10, 8, 6, 5),
                                  child: Column(
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
                                      const Divider(),
                                      Row(
                                        children: [
                                          Expanded(
                                              flex: 2,
                                              child: Container(
                                                padding: EdgeInsets.all(8),
                                                child: const Text(
                                                  "0đ",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18),
                                                ),
                                              )),

                                              ///Dialog chon co banh
                                          Expanded(
                                            flex: 2,
                                            child: ElevatedButton(
                                              onPressed: () async {
                                                await showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return Dialog(
                                                        child: Container(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.25,
                                                            decoration:
                                                                const BoxDecoration(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      241,
                                                                      197,
                                                                      197),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .fromLTRB(
                                                                      5,
                                                                      5,
                                                                      5,
                                                                      5),
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  const Text(
                                                                    "Chọn đế + viền bánh:",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            20,
                                                                        color: Colors
                                                                            .black),
                                                                  ),
                                                                  Container(
                                                                    margin:
                                                                        const EdgeInsets.fromLTRB(
                                                                            10,
                                                                            10,
                                                                            10,
                                                                            10),
                                                                    padding:
                                                                        const EdgeInsets.fromLTRB(
                                                                            20,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6),
                                                                      border: Border.all(
                                                                          color: Colors
                                                                              .grey,
                                                                          width:
                                                                              1),
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: DropdownButton<
                                                                        String>(
                                                                      value:
                                                                          _dropdownValue,
                                                                      isExpanded:
                                                                          true,
                                                                      underline:
                                                                          Container(),
                                                                      items:
                                                                          <String>[
                                                                        'Đế Giòn Xốp',
                                                                        'Đế Kéo Tay Truyền Thống',
                                                                        'Đế Mỏng Giòn',
                                                                      ].map<DropdownMenuItem<String>>((String
                                                                              value) {
                                                                        return DropdownMenuItem<
                                                                            String>(
                                                                          value:
                                                                              value,
                                                                          child:
                                                                              Text(
                                                                            value,
                                                                            style:
                                                                                TextStyle(fontSize: 18, color: Colors.black),
                                                                          ),
                                                                        );
                                                                      }).toList(),
                                                                      onChanged:
                                                                          (String?
                                                                              selectedvalue) {
                                                                        _dropdownValue =
                                                                            selectedvalue!;
                                                                        this.setState(
                                                                            () {
                                                                          _dropdownValue =
                                                                              selectedvalue;
                                                                        });
                                                                        print(
                                                                            _dropdownValue);
                                                                      },
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            )),
                                                      );
                                                    });
                                              },
                                              style: ButtonStyle(
                                                minimumSize:
                                                    MaterialStateProperty.all<
                                                        Size>(Size(50, 45)),
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(Color.fromARGB(255, 7, 150, 12)),
                                                overlayColor:
                                                    MaterialStateProperty.all<
                                                            Color>(
                                                        Colors.teal),
                                                foregroundColor:
                                                    MaterialStateProperty.all<
                                                            Color>(
                                                        Color.fromARGB(255, 246,
                                                            205, 205)),
                                              ),
                                              child: Text("Thêm",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }));
            },
          );
        },
        icon: Icon(
          Icons.add,
          color: Colors.green,
          size: 30,
        ),
      ),
    );
  }
}
