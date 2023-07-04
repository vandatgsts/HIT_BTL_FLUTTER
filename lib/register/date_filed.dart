import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';

class DateFiled extends StatefulWidget {
  const DateFiled({super.key});

  @override
  State<DateFiled> createState() => _DateFiledState();
}

class _DateFiledState extends State<DateFiled> {
  final TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Text(
              "Ngày sinh",
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
            Text(
              "*",
              style: TextStyle(fontSize: 15, color: Colors.red),
            )
          ],
        ),
        const SizedBox(
          height: 3,
        ),
        TextFormField(
          controller: dateController,
          decoration: InputDecoration(
            hintText: "Ngày sinh",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide()),
          ),
          readOnly: true,
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2101));
            if (pickedDate != null) {
              String formattedDate =
                  DateFormat("dd-MM-yyyy").format(pickedDate);
              setState(() {
                dateController.text = formattedDate.toString();
              });
            } else {
              print("Not select");
            }
          },
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Nhập ngày sinh";
            }
            return null;
          },
        ),
        
      ],
    );
  }
}
