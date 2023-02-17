import 'package:get/get.dart';

class TapController extends GetxController {
  var x = 0.obs;
  var y = 0.obs;
  var total = 0.obs;
  int _value = 0;
  // int get value => _value;


  increaseX(){
    x++;
  }
  decreaseX(){
    x--;
  }
  increaseY(){
    y++;
  }

  sumXY(){
    total.value = x.value + y.value;
    // update();
    print(total);
  }
}
