import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  List item = ["Đế Mỏng", "Đế Giòn Xốp", "Đế Kéo Tay Truyền Thống"];
  String? temp;
  final _textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My TODO"),
      ),
      body: Center(
          child: Container(
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
              child: ListView(
                children: item.map((element) => Text(element)).toList(),
              ))),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          temp = await _showTextInputDialog(context);
          setState(() {
            item.add(item);
            print(item);
          });
        },
        tooltip: "Add URL",
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<String?> _showTextInputDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('TODO'),
            content: TextField(
              controller: _textFieldController,
              // decoration: const InputDecoration(hintText: "Nhap"),
            ),
            actions: <Widget>[
              ElevatedButton(
                child: const Text("Cancel"),
                onPressed: () => Navigator.pop(context),
              ),
              ElevatedButton(
                child: const Text('OK'),
                onPressed: () => Navigator.of(context)
                    .pop(_textFieldController.text.toString()),
              ),
            ],
          );
        });
  }

  @override
  void initState() {
    item = ['Hi'];
    super.initState();
  }
}
