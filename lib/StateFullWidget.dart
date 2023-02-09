import 'package:flutter/material.dart';

class StateFulWidget extends StatefulWidget {
  @override
  State<StateFulWidget> createState() => StatefulWidgetState();
}

class StatefulWidgetState extends State<StateFulWidget> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count: $counter"),
            ElevatedButton(onPressed:() {
              setState(() {
              counter++;
              });
            }, child: Text("Tap Count"))
          ],
        ),
      ),
    );
  }
}
