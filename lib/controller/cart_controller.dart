import 'package:btl_flutter/CallAPI/Model/bogo.dart';
import 'package:btl_flutter/Data/Product.dart';
import 'package:btl_flutter/call_API/post_api.dart';
import 'package:btl_flutter/controller/AppControler.dart';
import 'package:btl_flutter/controller/map_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CartController extends GetxController{
  late BuildContext context;
  RxList<BOGO> listItem=<BOGO>[].obs;
  RxInt totalPrice=00.obs;
  RxList listItem2= <Product>[].obs;
  RxString typeShip='Giao hàng tận nơi'.obs;///true ship, false no ship

  String messeger='';
  @override
  void onInit() async {
    // TODO: implement onInit
    //typeShip.text='Giao hàng tận nơi';
   cacuTotalPrice();
  }
  @override
  void onReady() {
    // TODO: implement onReady
    cacuTotalPrice();
    super.onReady();
  }
  void clearCart() async {


    Get.find<AppControleer>().currentUser.point += totalPrice.value ~/ 10000;

    if(!Get.isRegistered<MapController>()){
      Get.put(MapController());
    }
    String location=Get.find<MapController>().address.value;
    messeger =await PostAPI.postCart(location);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text( messeger)));
    if(messeger.compareTo('Đặt hàng thành công')==0)
      {
        listItem.clear();
        listItem2.clear();
        totalPrice.value=0;
      }
    print( Get.find<AppControleer>().currentUser.point);

  }
  void cacuTotalPrice() {

    totalPrice.value=0;
    if(typeShip.value.compareTo('Giao hàng tận nơi')==0) {
      for(var i in listItem){
      totalPrice.value+=i.price!;
    }
      for(var i in listItem2){
        totalPrice.value+=int.parse(i.price!);
      }
      totalPrice.value+=20000;
    }
    else {
      for(var i in listItem){
        totalPrice.value+=i.price!;
      }
      for(var i in listItem2){
        totalPrice.value+=int.parse(i.price!);
      }

    }
  }
}