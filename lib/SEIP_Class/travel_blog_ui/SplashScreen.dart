import 'dart:async';

import 'package:flutter/material.dart';
import 'package:practice/SEIP_Class/travel_blog_ui/TravelHomePage.dart';
class SplashScreenTravelPage extends StatefulWidget {
  const SplashScreenTravelPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenTravelPage> createState() => _SplashScreenTravelPageState();
}

class _SplashScreenTravelPageState extends State<SplashScreenTravelPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4),(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => TravelHomePage(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("WelCome",style: TextStyle(fontFamily: "CustomFont",fontSize: 50,color: Colors.white),),
            SizedBox(height: 100,),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
