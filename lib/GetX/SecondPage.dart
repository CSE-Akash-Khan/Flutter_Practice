import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:practice/GetX/controller/ListController.dart';
import 'package:practice/GetX/controller/tabController.dart';

class SecondPage extends StatelessWidget {
  SecondPage({Key? key}) : super(key: key);
  TapController controller = Get.find();
  ListController listController = Get.find();

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
                    listController.value.toString(),
                    style:
                        TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ))),

            ),
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
                        "X value: ${controller.x.toString()}",
                        style:
                        TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                      ))),
            ),
            GestureDetector(
              onTap: () {
                controller.increaseX();
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
                        "Increase x",
                        style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                      ))),
            ),
            GestureDetector(
              onTap: () {
                listController.addValueInLIst(controller.x);
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
                        "Add X value in List",
                        style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                      ))),
            ),
            GestureDetector(
              onTap: () {
                listController.removeValueFromList();
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
                        "Remove value form list",
                        style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
