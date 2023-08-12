
import 'package:flutter/material.dart';

import '../CallAPI/Network/pizza_network.dart';
import '../Data/Product.dart';

class Choose_Appetizer extends StatefulWidget {
  const Choose_Appetizer({super.key});

  @override
  State<Choose_Appetizer> createState() => _Choose_AppetizerState();
}

class _Choose_AppetizerState extends State<Choose_Appetizer> {

 TextEditingController _textEditingController = TextEditingController();
  String _displayText = '';
 var getData = <Product>[];
  @override
  void initState() {
    // TODO: implement initState
    NetworkRequestSubMenu.fetchSub(6, 5).then((dataFromServer) {
      setState(() {
        getData = dataFromServer;
      });
    });
    super.initState();
  }
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
                  onTap: () {
                    _openGridView();
                  },
                  decoration: InputDecoration(
                    labelText: 'Chọn món khai vị',
                    border: const OutlineInputBorder(),
                    suffixIcon: const Icon(
                      Icons.add,
                      size: 30,
                      color: Color.fromARGB(255, 50, 132, 53),
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
             return InkWell(
               onTap: (){
                 _textEditingController.text=getData[index].productName;
               },
               child: Container(
                 margin: const EdgeInsets.fromLTRB(15, 20, 15, 10),
                 child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(6),
                     color: Colors.white,
                     boxShadow: [
                       BoxShadow(
                         color: const Color.fromARGB(255, 154, 152, 152).withOpacity(0.4),
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
                         padding: const EdgeInsets.fromLTRB(6, 8, 5, 8),
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
                               padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                               child: Row(
                                 children: [
                                   Expanded(
                                     flex: 2,
                                     child: Container(
                                       padding: const EdgeInsets.all(8),
                                       child: const Text(
                                         "0đ",
                                         style: TextStyle(
                                           color: Colors.black,
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
               ),
             );
           },
         ),
       );
     },
   );
 }
}
