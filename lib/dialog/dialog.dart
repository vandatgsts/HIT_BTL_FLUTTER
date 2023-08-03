import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    String _dropdownValue = 'Đế Giòn Xốp';
    return Scaffold(
      body: ElevatedButton(
        onPressed: () async {
          await showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  child: Container(
                      height: MediaQuery.of(context).size.width * 0.25,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 241, 197, 197),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Chọn đế + viền bánh:",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border:
                                    Border.all(color: Colors.grey, width: 1),
                                color: Colors.white,
                              ),
                              child: DropdownButton<String>(
                                value: _dropdownValue,
                                isExpanded: true,
                                underline: Container(),
                                items: <String>[
                                  'Đế Giòn Xốp',
                                  'Đế Kéo Tay Truyền Thống',
                                  'Đế Mỏng Giòn',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (String? selectedvalue) {
                                  _dropdownValue = selectedvalue!;
                                  this.setState(() {
                                    _dropdownValue = selectedvalue;
                                  });
                                  print(_dropdownValue);
                                },
                              ),
                            ),
                          ],
                        ),
                      )),
                );
              });
        },
        style: TextButton.styleFrom(
            primary: Colors.white, backgroundColor: Colors.green),
        child: Text("Thêm"),
      ),
    );
  }
}
