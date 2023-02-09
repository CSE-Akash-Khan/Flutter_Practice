import 'package:flutter/material.dart';
class ConstraintBox extends StatelessWidget {
  const ConstraintBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Constraint Box"),
        centerTitle: true,
        leading: Icon(Icons.arrow_back,),
      ),
      body: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 200,
          minHeight: 150,
          maxHeight: 300,
          maxWidth: 300
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(minimumSize: const Size(600, 200)),
          onPressed: () {},
          child: const Text("Button",style: TextStyle(overflow: TextOverflow.fade),),),
      ),
    );
  }
}
