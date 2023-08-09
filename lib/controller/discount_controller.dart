import 'package:btl_flutter/call_API/get_api.dart';
import 'package:get/get.dart';

class DiscountController extends GetxController{
  RxList listProduct=[].obs;

  @override
  void onInit() async {
    // TODO: implement onInit
    listProduct.value= await GetApi.getProducts();
    super.onInit();
  }
}