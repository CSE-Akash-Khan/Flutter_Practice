import 'dart:async';

import 'package:flutter/material.dart';
class Animated_Opacity extends StatefulWidget {
  const Animated_Opacity({Key? key}) : super(key: key);

  @override
  State<Animated_Opacity> createState() => _Animated_OpacityState();
}

class _Animated_OpacityState extends State<Animated_Opacity> {
  var opacityValue = 0.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),() {
      opacityValue = 1.0;
      setState(() {
      });
    },);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              curve: Curves.linear,
              opacity: opacityValue,
              duration: Duration(seconds: 1),

              child: Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
            ),
            ElevatedButton(onPressed: () {
              opacityValue = 1.0;
              setState(() {

              });
            }, child: Text("Click"))
          ],
        ),
      ),
    );
  }
}
