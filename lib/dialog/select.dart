import 'package:flutter/material.dart';

// Replace this with your actual imports
import '../CallAPI/Model/bogo.dart';
import '../CallAPI/Network/pizza_network.dart';
import '../Data/Product.dart';
import '../CallAPI/Network/network.dart';

class Select extends StatefulWidget {
  const Select({Key? key}) : super(key: key);

  @override
  _SelectState createState() => _SelectState();
}

class _SelectState extends State<Select> {
  var getData = <Product>[];
  List<String> itemList = [
    'Đế Giòn Xốp',
    'Đế Kéo Tay Truyền Thống',
    'Đế Mỏng Giòn'
  ];
  String selectedValue = '';
  String selectedProductName = ''; // Initialize selectedProductName
  bool showGridView = false;

  @override
  void initState() {
    super.initState();
    NetworkRequestSubMenu.fetchSub(11, 2).then((dataFromServer) {
      setState(() {
        getData = dataFromServer;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    String displayText = selectedProductName.isNotEmpty
        ? '$selectedProductName +$selectedValue'
        : selectedValue;

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
            child: Column(
              children: [
                TextField(
                  readOnly: true,
                  controller: TextEditingController(text: displayText),
                  onTap: () {
                    _openGridView();
                  },
                  decoration: InputDecoration(
                    labelText: 'Chọn 1 bánh Pizza',
                    border: const OutlineInputBorder(),
                    suffixIcon: InkWell(
                      onTap: () {
                        _openGridView();
                      },
                      child: const Icon(
                        Icons.add,
                        size: 30,
                        color: Color.fromARGB(255, 50, 132, 53),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
              childAspectRatio: 0.75,
            ),
            itemCount: getData.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.fromLTRB(15, 20, 15, 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 154, 152, 152).withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(6),
                          topRight: Radius.circular(6),
                        ),
                        child: SizedBox.fromSize(
                          child: Image.network("${getData[index].image}"),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(6, 8, 5, 8),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    getData[index].productName,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              color: Colors.black,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.all(8),
                                      child: const Text(
                                        "0đ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: const Text(
                                                'Chọn đế bánh pizza',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                              content: Container(
                                                width: 400,
                                                height: 180,
                                                color: Color.fromARGB(255, 31, 134, 43),
                                                child: ListView.builder(
                                                  shrinkWrap: true,
                                                  itemCount: itemList.length,
                                                  itemBuilder: (context, index) {
                                                    return ListTile(
                                                      title: Text(
                                                        itemList[index],
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                      onTap: () {
                                                        setState(() {
                                                          selectedValue = itemList[index];
                                                          selectedProductName = getData[index].productName;
                                                        });
                                                        Navigator.pop(context);
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      style: ButtonStyle(
                                        minimumSize: MaterialStateProperty.all<Size>(Size(50, 45)),
                                        backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 7, 150, 12)),
                                        overlayColor: MaterialStateProperty.all<Color>(Colors.teal),
                                        foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 246, 205, 205)),
                                      ),
                                      child: const Text(
                                        "Thêm",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
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
            },
          ),
        );
      },
    );
  }
}
