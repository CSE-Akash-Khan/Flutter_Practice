import 'package:get/get.dart';
import 'package:practice/GetX/controller/ListController.dart';
import 'package:practice/GetX/controller/tabController.dart';

class InitializeController implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => TapController());
    Get.lazyPut(() => ListController());
  }

}