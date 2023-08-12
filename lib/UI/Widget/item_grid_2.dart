import 'package:btl_flutter/controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Data/Product.dart';
import 'app_image_widget.dart';

class ItemGrid02 extends StatefulWidget {
  Product product;


    ItemGrid02(this.product);

  @override
  State<ItemGrid02> createState() => _ItemGridState();
}

class _ItemGridState extends State<ItemGrid02> {
  String dropdownValue1 = 'Nhỏ';

  String dropdownValue2 = 'Đế Giòn Xốp(Nhỏ)';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color:
                const Color.fromARGB(255, 154, 152, 152).withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 2)
          ]),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(6), topRight: Radius.circular(6)),
            child: SizedBox.fromSize(
              child: AppImageWidget.network(
                path: widget.product.image,
              ),
            ),
          ),
          Container(
            padding:
            EdgeInsets.only(left: 10.sp, right: 8.sp, bottom: 8.sp, top: 8.sp),
            child:
            Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Text(
                      '${widget.product.name}\n',
                      maxLines: 2,
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Text(
                widget.product.description,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 10,
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
                      onPressed: () {
                        if(!Get.isRegistered<CartController>()){
                          Get.put(CartController());
                        }
                        widget.product.caseSize=dropdownValue1;
                        widget.product.cakeBase=dropdownValue2;
                        Get.find<CartController>().listItem2.add(widget.product);
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all<Size>(
                            const Size(150, 50)),
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                        overlayColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 4, 203, 199)),
                        foregroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 246, 205, 205)),
                      ),
                      child: Text(
                        "Thêm ${widget.product.price}d",
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
