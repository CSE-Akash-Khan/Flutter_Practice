import 'package:get/get.dart';

class ListController extends GetxController{
  List value = [].obs;
  addValueInLIst(var val){
    value.add(val);
  }
  removeValueFromList(){
    value.removeLast();
  }
}