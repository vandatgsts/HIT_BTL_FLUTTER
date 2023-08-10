import 'package:btl_flutter/call_API/get_api.dart';
import 'package:btl_flutter/controller/AppControler.dart';
import 'package:get/get.dart';

import '../Data/User.dart';

class DiscountController extends GetxController{
  RxList listProduct=[].obs;
  late User user;
  @override
  void onInit() async {
    // TODO: implement onInit
    user=Get.find<AppControleer>().currentUser;
    listProduct.value= await GetApi.getProducts();
    super.onInit();
  }
}