import 'package:flutter/material.dart';

class SimpleWidget extends StatelessWidget {
  const SimpleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Widget"),
        centerTitle: true,
      ),
      body: RichText(
        text: const TextSpan(
          style: TextStyle(color: Colors.grey,fontSize: 35),
          children: [
            TextSpan(
                text: "Hello",
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                    fontFamily: "CustomFont"
                ),
            ),
            TextSpan(text: " World",),
          ],
        ),
      ),
    );
  }
}
