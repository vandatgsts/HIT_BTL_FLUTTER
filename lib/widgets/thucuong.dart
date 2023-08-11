import 'package:btl_flutter/CallAPI/Network/product_combo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Data/Product.dart';
class ThucUong extends StatefulWidget {
  const ThucUong({super.key});

  @override
  State<ThucUong> createState() => _ThucUongState();
}

class _ThucUongState extends State<ThucUong> {
  var getData=<Product>[];
  
  @override
  void initState(){
    super.initState();
    NetworkRequestProduct.fetchProduct(4).then((datafromServer) {
      setState(() {
        getData=datafromServer;
      });
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: getData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,
            childAspectRatio: 0.7),
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
                    child:Image.network("${getData[index].image}")
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
                                    fontSize:16,
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
                        SizedBox(height: 10,),
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
                                              Color.fromARGB(
                                                  255, 246, 205, 205)),
                                    ),
                                    child:  Text(
                                      "Thêm ${getData[index].price}",
                                      style: const TextStyle(
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
