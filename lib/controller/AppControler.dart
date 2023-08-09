import 'package:get/get.dart';

import '../Data/User.dart';

class AppControleer extends SuperController{

  User currentUser=User(fullName: 'fullName', userName: 'userName', password: 'password', gender: 'nam', address: 'address', birthday: 'birthday', point: 100);


  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
  }
  @override
  void onDetached() {
    // TODO: implement onDetached
  }

  @override
  void onInactive() {
    // TODO: implement onInactive
  }

  @override
  void onPaused() {
    // TODO: implement onPaused
  }

  @override
  void onResumed() {
    // TODO: implement onResumed
  }
}