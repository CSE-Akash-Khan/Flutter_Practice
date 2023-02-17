import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:practice/GetX/controller/ListController.dart';
import 'package:practice/GetX/controller/tabController.dart';

Future<void>Init() async {
  Get.lazyPut(() =>TapController());
  Get.lazyPut(() => ListController());
}