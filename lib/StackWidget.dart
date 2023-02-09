import 'package:flutter/material.dart';
class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Widget"),
        centerTitle: true,
      ),
      body: Container(
        width: 300,
        height: 300,
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.grey,
            ),
            Positioned(
              top: 25,
              left: 25,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 150,
                width: 150,
                color: Colors.orange,
              ),
            )
          ],
        ),
      ),
    );
  }
}
