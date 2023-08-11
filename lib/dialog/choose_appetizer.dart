
import 'package:flutter/material.dart';

class Choose_Appetizer extends StatefulWidget {
  const Choose_Appetizer({super.key});

  @override
  State<Choose_Appetizer> createState() => _Choose_AppetizerState();
}

class _Choose_AppetizerState extends State<Choose_Appetizer> {

 TextEditingController _textEditingController = TextEditingController();
  String _displayText = '';
  Widget build(BuildContext context) {
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
                  controller: _textEditingController,
                  onTap: () {},
                  decoration: InputDecoration(
                    labelText: 'Chọn món khai vị',
                    border: const OutlineInputBorder(),
                    suffixIcon: InkWell(
                      onTap: () {
                        _addText();
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
  void _addText() {
    setState(() {
      _displayText = "Xà Lách Cá Ngừ Và Thịt Xông Khói";
      _textEditingController.text = _displayText;
    });
  }

}
