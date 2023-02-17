import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:practice/GetX/controller/tabController.dart';

class ThirdPage extends StatelessWidget {
  ThirdPage({Key? key}) : super(key: key);
  TapController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
            ()=> Container(
                  margin: EdgeInsets.only(top: 20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Color(0xFF89dad0),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                        controller.x.toString(),
                        style:
                        TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                      ))),
            ),
            GestureDetector(
              onTap: () {
                controller.decreaseX();
              },
              child: Container(
                  margin: EdgeInsets.only(top: 20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Color(0xFF89dad0),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                        "DecreaseX",
                        style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
