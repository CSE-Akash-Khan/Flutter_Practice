import 'package:flutter/material.dart';
class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.elliptical(35, 10)),
          child: Hero(
            tag: "sylhet",
            child: Image.asset("images/nature.jpg"),
          ),
        ),
      ),
    );
  }
}
