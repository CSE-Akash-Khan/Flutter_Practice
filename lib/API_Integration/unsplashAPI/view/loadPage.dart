import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:practice/API_Integration/unsplashAPI/view/HomePageUnsplash.dart';

import '../controller/UnsplashApiController.dart';
class LoadPage extends StatelessWidget {
   LoadPage({Key? key}) : super(key: key);
  UnsplashApiController unsplashApiController =
  Get.put(UnsplashApiController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(()=>HomePageUnsplash());
            unsplashApiController.loadData();
          }, child: Text("Load"),
        ),
      ),
    );
  }
}
