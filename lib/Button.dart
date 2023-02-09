import 'package:flutter/material.dart';
import 'package:practice/widgets/RoundedButton.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoudedButton(
            btnName: 'Play',
            icon: Icon(Icons.play_arrow),
            voidCallback: () {
              print("Clicked");
            },
            textStyle: Theme.of(context).textTheme.headline1,
            width: 100,
          ),
          RoudedButton(
            width: 150,
            btnName: "Stop",
            textStyle: TextStyle(fontSize: 25),
            bgColor: Colors.green,
            voidCallback: () {
              print("btn2 clicked");
            },
          ),
        ],
      ),
    );
  }
}
