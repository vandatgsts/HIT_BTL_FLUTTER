import 'package:btl_flutter/AppRouter/AppRouter.dart';
import 'package:btl_flutter/Data/User.dart';
import 'package:btl_flutter/controller/AppControler.dart';
import 'package:get/get.dart';

class AccountController extends GetxController{
  late User? user;
  RxBool viewInfor=false.obs;
  onPressChangePassWord(){
    Get.toNamed(AppRouter.changePassScreen);
  }
  onPressChangeInfo(){

  }
  @override
  void onInit() {
    // TODO: implement onInit
    user=Get.find<AppControleer>().currentUser;
    super.onInit();
  }
}