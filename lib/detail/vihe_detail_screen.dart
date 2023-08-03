import 'package:flutter/material.dart';

import '../bottom/bottom_drink.dart';
import '../bottom/bottom_pizza.dart';


class ViHeDetailScreen extends StatefulWidget {
  const ViHeDetailScreen({super.key});

  @override
  State<ViHeDetailScreen> createState() => _ViHeDetailScreenState();
}

class _ViHeDetailScreenState extends State<ViHeDetailScreen> {
  List<String> itemList = ['Đế Giòn Xốp', 'Đế Kéo Tay Truyền Thống', 'Đế Mỏng Giòn'];
  String selectedValue = '';
  bool showGridView = false;
  void _openDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Chọn đế bánh + viền bánh'),
          content: Container(
            width: double.maxFinite,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: itemList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(itemList[index]),
                  onTap: () {
                    setState(() {
                      selectedValue = itemList[index];
                    });
                    Navigator.of(context).pop();
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }

  void _openGridView() {
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            color: const Color.fromARGB(255, 248, 222, 222),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                  childAspectRatio: 0.9),
              itemCount: itemList.length,
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
                                  Expanded(
                                    flex: 2,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text('Chọn 1 bánh pizza'),
                                              content: Container(
                                                width: double.maxFinite,
                                                child: Column(
                                                  children: [
                                                    ListView.builder(
                                                      shrinkWrap: true,
                                                      itemCount:
                                                          itemList.length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return ListTile(
                                                          title: Text(
                                                              itemList[index]),
                                                          onTap: () {
                                                            setState(() {
                                                              selectedValue =
                                                                  itemList[
                                                                      index];
                                                              showGridView =
                                                                  false;
                                                            });
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                        );
                                                      },
                                                    ),
                                                    SizedBox(height: 16),
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: Text('Chọn'),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      style: ButtonStyle(
                                        minimumSize:
                                            MaterialStateProperty.all<Size>(
                                                Size(50, 45)),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Color.fromARGB(
                                                    255, 7, 150, 12)),
                                        overlayColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.teal),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Color.fromARGB(
                                                    255, 246, 205, 205)),
                                      ),
                                      child: Text(
                                        "Thêm",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            )),
        title: const Center(
            child: Text(
          "Tùy chỉnh Combo",
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400),
        )),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Image.asset("assets/ViHe/1.jpg"),
            ),
            const Row(
              children: [
                Text(
                  "COMBO MY BOX 1",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "Dành cho 1-2 người",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                          "01 Piza Gà Nướng Nấm/Phô Mai Cao Cấp/ Pepperoni(Cỡ nhỏ)",
                          style: TextStyle(color: Colors.black, fontSize: 16)),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                          "01 Bánh Mì Bơ Tỏi/Bánh Cuộn Phô Mai/ Khoai Tây Chiên",
                          style: TextStyle(color: Colors.black, fontSize: 16))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        TextField(
                          readOnly: true,
                          controller:
                              TextEditingController(text: selectedValue),
                          onTap: () {
                            _openDialog();
                          },
                          decoration: InputDecoration(
                            labelText: 'Chọn một mục',
                            border: OutlineInputBorder(),
                            suffixIcon: InkWell(
                              onTap: () {
                                _openGridView();
                              },
                              child: Icon(Icons.add),
                            ),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        if (showGridView)
                          IconButton(
                            onPressed: () {
                              showModalBottomSheet<void>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      color: const Color.fromARGB(
                                          255, 248, 222, 222),
                                      child: GridView.builder(
                                        shrinkWrap: true,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                                crossAxisSpacing: 5.0,
                                                mainAxisSpacing: 5.0,
                                                childAspectRatio: 0.9),
                                        itemCount: itemList.length,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            margin: EdgeInsets.fromLTRB(
                                                15, 20, 15, 10),
                                            child: Container(
                                              child: Column(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    6),
                                                            topRight:
                                                                Radius.circular(
                                                                    6)),
                                                    child: SizedBox.fromSize(
                                                      child: Image.asset(
                                                        'assets/SummerMenu/Pizza_Thit_Bo_va_Hai_San.jpg',
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            const Expanded(
                                                              flex: 6,
                                                              child: Text(
                                                                "Piza Hải Sản Thịt Bò",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              flex: 1,
                                                              child:
                                                                  Container(),
                                                            )
                                                          ],
                                                        ),
                                                        const Divider(),
                                                        Row(
                                                          children: [
                                                            Expanded(
                                                                flex: 2,
                                                                child:
                                                                    Container(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              8),
                                                                  child:
                                                                      const Text(
                                                                    "0đ",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            18),
                                                                  ),
                                                                )),
                                                            Expanded(
                                                              flex: 2,
                                                              child: InkWell(
                                                                onTap: () {
                                                                  showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (BuildContext
                                                                            context) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'Danh sách mục'),
                                                                        content:
                                                                            Container(
                                                                          width:
                                                                              double.maxFinite,
                                                                          child:
                                                                              ListView.builder(
                                                                            shrinkWrap:
                                                                                true,
                                                                            itemCount:
                                                                                itemList.length,
                                                                            itemBuilder:
                                                                                (context, index) {
                                                                              return ListTile(
                                                                                title: Text(itemList[index]),
                                                                                onTap: () {
                                                                                  setState(() {
                                                                                    selectedValue = itemList[index];
                                                                                    showGridView = false;
                                                                                  });
                                                                                  Navigator.of(context).pop();
                                                                                },
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                },
                                                                child:
                                                                    Container(
                                                                  color: Colors
                                                                      .blue,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Text(
                                                                      itemList[
                                                                          index]),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    );
                                  });
                            },
                            icon: Icon(
                              Icons.add,
                              color: Colors.green,
                              size: 30,
                            ),
                          )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    padding: EdgeInsets.fromLTRB(18, 0, 5, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.black, width: 1),
                        boxShadow: [BoxShadow(color: Colors.grey)]),
                    child: const Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Text(
                            "Chọn 1 bánh Piza",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                        Expanded(flex: 1, child: BottomPizza())
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    padding: EdgeInsets.fromLTRB(18, 0, 5, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.black, width: 1),
                        boxShadow: [BoxShadow(color: Colors.grey)]),
                    child: const Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Text(
                            "Chọn thức uống",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                        Expanded(flex: 1, child: BottomDrink())
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
