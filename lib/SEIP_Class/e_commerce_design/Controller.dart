import 'package:get/get.dart';

import 'headphoneModel.dart';

class HeadPhoneController extends GetxController{

  // var headPhoneData = HeadphoneModel.headphone();

  int price(HeadphoneModel headphoneModel){
    return headphoneModel.price!*headphoneModel.q;
    update();
  }
  var isDelete = false;
  void deleteItem(){
    isDelete = true;
    update();
  }

  void increaseQuantity(HeadphoneModel headphoneModel){
      headphoneModel.q++;
      update();
  }
  void decreaseQuantity(HeadphoneModel headphoneModel){
    if(headphoneModel.q > 1){
      headphoneModel.q--;
    }
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}