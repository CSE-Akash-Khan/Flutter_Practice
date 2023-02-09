
import 'package:flutter/material.dart';
class CircleAvater extends StatelessWidget {
  const CircleAvater({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Circle Avatar"),
        centerTitle: true,
      ),
      // body: Center(
      //     child: CircleAvatar(
      //       // backgroundImage: AssetImage("images/boy.png"),
      //       backgroundColor: Colors.greenAccent,
      //       radius: 70,
      //       child: Column(
      //         children: [
      //           Container(
      //             padding: EdgeInsets.symmetric(vertical: 5),
      //             height: 100,
      //               width: 100,
      //               child: Image.asset("images/boy.png")),
      //           Text("Hello")
      //         ],
      //       )
      //     ),
      //
      // ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.blueAccent,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.grey,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: 50,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
