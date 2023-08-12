import 'package:get/get.dart';

class MenuController extends GetxController{
  RxBool fromMap=false.obs;

  RxString dropdownValue1 = 'Nhỏ'.obs;
  RxString dropdownValue2 = 'Đế Giòn Xốp'.obs;

  RxString price='129000'.obs;

  void cacuPrice(){
    if(dropdownValue1.value.compareTo('Nhỏ')==0){
      price.value='129000';
      return ;
    }
    if(dropdownValue1.value.compareTo('Vừa')==0)
      {
        price.value='239000';
      }
    if(dropdownValue1.value.compareTo('Lớn')==0)
      {
        price.value='299000';
      }
  }

}