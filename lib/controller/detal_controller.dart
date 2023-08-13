import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../CallAPI/Model/bogo.dart';
import '../CallAPI/Network/pizza_network.dart';
import '../Data/Product.dart';
import '../dialog/select.dart';
import 'cart_controller.dart';

class DetalController extends GetxController {
  late BuildContext context;
  late BOGO bogoItem;
  TextEditingController textAppertizer = TextEditingController();
  TextEditingController textDrink = TextEditingController();

  RxList getDataAppetizer = <Product>[].obs;
  RxList getDataDrink = <Product>[].obs;

  @override
  void onInit() async {
    // TODO: implement onInit

    bogoItem = Get.arguments['bogoItem'];

    getDataAppetizer.value= await NetworkRequestSubMenu.fetchSub(6, 5);


    getDataDrink.value= await NetworkRequestSubMenu.fetchSub(7, 4);

    super.onInit();
  }
  void onPressAdd(){
    if(!Get.isRegistered<CartController>()){
      Get.put(CartController());
    }
    bogoItem.disPlayName=Select.displayText;
    bogoItem.appertizer=textAppertizer.text;
    bogoItem.drink=textDrink.text;
    Get.find<CartController>().listItem.add(
      bogoItem,
    );
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Them thanh cong')));
  }
}
