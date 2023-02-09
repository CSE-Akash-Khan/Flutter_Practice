import 'package:flutter/material.dart';

class CustomFonts extends StatelessWidget {
  const CustomFonts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Fonts"),
        centerTitle: true,
      ),
      body: Center(
        // child: Text("Hello World",style: TextStyle(fontFamily: 'CustomFont',fontSize: 30),),
        child: Column(
          children: [
            Text(
              "Hello World",
              style: Theme.of(context).textTheme.headline1,
            ),
            Text("Text2",style: Theme.of(context).textTheme.headline2!.copyWith(fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
