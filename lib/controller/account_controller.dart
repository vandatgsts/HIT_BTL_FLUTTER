import 'package:btl_flutter/Data/User.dart';
import 'package:get/get.dart';

class AccountController extends GetxController{
  late User user=User(userName: 'Van dat', password: '1234546', email: 'ndat',phoneNumber: '0123456789',fullName: 'Nguyen Van Dat',gender: 'nam',address: 'ha noi',birthday: '2022-07-07');
  RxBool viewInfor=false.obs;
  onPressChangePassWord(){

  }
  onPressChangeInfo(){

  }
}