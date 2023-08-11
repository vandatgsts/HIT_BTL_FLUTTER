import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../CallAPI/Network/product_combo.dart';
import '../Data/Product.dart';

class PizzaScreen extends StatefulWidget {
  const PizzaScreen({super.key});

  @override
  State<PizzaScreen> createState() => _PizzaScreenState();
}

class _PizzaScreenState extends State<PizzaScreen> {

  var getData=<Product>[];

  String dropdownValue1 = 'Nhỏ';
  String dropdownValue2 = 'Đế Giòn Xốp(Nhỏ)';
  @override
   void initState(){
    super.initState();
    NetworkRequestProduct.fetchProduct(2).then((datafromServer) {
      setState(() {
        getData = datafromServer;
      });
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: getData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.5),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color:
                          Color.fromARGB(255, 154, 152, 152).withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 2)
                ]),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6)),
                  child: SizedBox.fromSize(
                    child:Image.network('${getData[index].image}')
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 10, right: 8, bottom: 8, top: 8),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                             Expanded(
                              flex: 6,
                              child: Text(
                                getData[index].productName,
                                style: const TextStyle(
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
                         Text(
                          getData[index].description,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Row(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Chọn cỡ bánh",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 6, bottom: 8),
                          padding: EdgeInsets.only(left: 15),
                          //width: 200,
                          height: 30,
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
                          child: DropdownButton<String>(
                            value: dropdownValue1,
                            isExpanded: true,
                            underline: Container(),
                            items: <String>['Nhỏ', 'Vừa', 'Lớn']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(fontSize: 15),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue1 = newValue!;
                              });
                            },
                          ),
                        ),
                        const Row(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Chọn đế viền",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 6, bottom: 16),
                          padding: EdgeInsets.only(left: 15),
                          // width: 200,
                          height: 30,
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
                          child: DropdownButton<String>(
                            value: dropdownValue2,
                            isExpanded: true,
                            underline: Container(),
                            items: <String>[
                              'Đế Giòn Xốp(Nhỏ)',
                              'Đế Kéo Tay Truyền Thống(Nhỏ)',
                              'Đế Mỏng Giòn(Nhỏ)'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(fontSize: 15),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue2 = newValue!;
                              });
                            },
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      minimumSize:
                                          MaterialStateProperty.all<Size>(
                                              Size(150, 50)),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.green),
                                      overlayColor:
                                          MaterialStateProperty.all<Color>(
                                              Color.fromARGB(255, 4, 203, 199)),
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Color.fromARGB(255, 246, 205, 205)),
                                    ),
                                    child: Text(
                                      "Thêm ${getData[index].price}",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300),
                                    ))),
                          ],
                        ),
                      ]),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}