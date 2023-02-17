import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:practice/GetX/SecondPage.dart';
import 'package:practice/GetX/FourthPage.dart';
import 'package:practice/GetX/ThirdPage.dart';
import 'package:practice/GetX/controller/ListController.dart';

import 'controller/tabController.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  // TapController tapController = Get.put(TapController());
  // ListController listController = Get.put(ListController());
  TapController tapController = Get.find();
  ListController listController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetX"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
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
                        "${tapController.x.toString()} : ${listController.value}",
                        style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                      ))),
            ),

            GestureDetector(
              onTap: () {
                tapController.increaseX();
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
                    "Increase X",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ))),
            ),
            GestureDetector(
              onTap: () {
                Get.to(SecondPage());
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
                    "Go to Second Page",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ))),
            ),
            GestureDetector(
              onTap: () {
                Get.to(ThirdPage());
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
                    "Go to third page",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ))),
            ),
            GestureDetector(
              onTap: () {
                Get.to(FourthPage());
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
                        "Go to Fourth Page",
                        style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
