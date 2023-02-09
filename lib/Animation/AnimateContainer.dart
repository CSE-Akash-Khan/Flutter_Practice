import 'dart:async';

import 'package:flutter/material.dart';

class AnimadtedContainer extends StatefulWidget {
  const AnimadtedContainer({Key? key}) : super(key: key);

  @override
  State<AnimadtedContainer> createState() => _AnimadtedContainerState();
}

class _AnimadtedContainerState extends State<AnimadtedContainer> {
  @override
  var containerColor = Colors.green;
  var containerHeight = 100.0;
  var containerWidth = 200.0;
  var flag = true;
  Decoration myDecor = BoxDecoration(
      borderRadius: BorderRadius.circular(21), color: Colors.blue);

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Timer(Duration(seconds: 4),() {
    //   reload();
    // },);
    Timer.periodic(const Duration(seconds: 4), (timer) => reload());
  }

  void reload(){
    setState(() {
      if(flag){
        flag = false;
      }else{
        flag = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade( //animated crossfade
              firstCurve: Curves.bounceInOut,
                firstChild: Container(
                  width: 200,
                  height: 200,
                  color: Colors.green,
                ),
                secondChild: SizedBox(width:200,height:200,child: Image.asset("images/boy.png")),
                crossFadeState: flag?CrossFadeState.showFirst:CrossFadeState.showSecond,
                duration: const Duration(seconds: 2),
            ),
            // ElevatedButton(onPressed: () {
            //   Timer.periodic(Duration(seconds: 5), (timer) => reload());
            //   // reload();
            // }, child: const Text("Press"))
          ],
        ),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       AnimatedContainer(
      //         decoration: myDecor,
      //         duration: Duration(seconds: 2),
      //         curve: Curves.fastOutSlowIn,
      //         height: containerHeight,
      //         width: containerWidth,
      //       ),
      //       ElevatedButton(onPressed: () {
      //         setState(() {
      //           if(flag){
      //             containerWidth = 100.0;
      //             containerHeight = 200.0;
      //             myDecor = BoxDecoration(
      //                 color: Colors.red,
      //                 borderRadius: BorderRadius.circular(21)
      //             );
      //             flag = false;
      //
      //           }else{
      //             containerWidth = 200.0;
      //             containerHeight = 100.0;
      //             myDecor = BoxDecoration(
      //                 color: Colors.orange,
      //                 borderRadius: BorderRadius.circular(2),
      //               boxShadow: [BoxShadow(
      //                 blurRadius: 30,
      //                 color: Colors.orangeAccent
      //               )]
      //             );
      //             flag = true;
      //           }
      //         });
      //       }, child: Text("Click"))
      //     ],
      //   ),
      // ),
    );
  }
}
