import 'package:flutter/material.dart';
class CheckContainer extends StatelessWidget {
  CheckContainer({Key? key}) : super(key: key);
  double widht = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: 50,
            width: 280,
            // color: Colors.grey,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(16)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text("Hello"),
                Container(
                 
                  height: 50,
                  width: widht,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16)
                  ),
                  // child: Text("hello"),
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}
