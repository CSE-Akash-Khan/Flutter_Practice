import 'package:flutter/material.dart';
import 'package:practice/widgets/DetailPage.dart';
class HeroAnimation extends StatelessWidget {
  const HeroAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animation"),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(),));
          },
          child: Hero(
            tag: "sylhet",
            child: Image.asset("images/nature.jpg",width: 100),
          ),
        ),
      ),
    );
  }
}
