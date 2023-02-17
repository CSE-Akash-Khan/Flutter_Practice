import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:practice/App/LoginApp/HomePage.dart';
import 'package:practice/GetX/controller/tabController.dart';

import 'HomePage.dart';

class FourthPage extends StatelessWidget {
  FourthPage({Key? key}) : super(key: key);
  TapController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx( ()=>
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Color(0xFF89dad0),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                        "Total value: ${controller.total.toString()}",
                        style:
                        TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              Obx( ()=> Container(
                    margin: EdgeInsets.only(top: 20),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Color(0xFF89dad0),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                          "Y value: ${controller.y.toString()}",
                          style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                        ))),
              ),
              GestureDetector(
                onTap: () {
                  controller.increaseY();
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
                          "IncreaseY",
                          style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                        ))),
              ),
              InkWell(
                onTap: () {
                  controller.sumXY();
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF89dad0),
                     borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Sum of X and Y",
                      style:
                      TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                  )
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(MyHomePage());
                },
                child: Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF89dad0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "Go to FirstPage",
                        style:
                        TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                      ),
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
