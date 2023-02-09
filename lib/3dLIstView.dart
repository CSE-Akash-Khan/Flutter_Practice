import 'package:flutter/material.dart';
class ThreeDListView extends StatelessWidget {
  ThreeDListView({Key? key}) : super(key: key);
  var arrList = [1,2,3,4,5,6,7,8,9,10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list")
      ),
      body: ListWheelScrollView(
        itemExtent: 200,
        children: arrList.map((value) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            color: Colors.orange,
            child: Center(child: Text('$value'),),
          ),
        )).toList(),
      ),
    );
  }
}
