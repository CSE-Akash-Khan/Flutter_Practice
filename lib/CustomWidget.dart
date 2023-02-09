import 'package:flutter/material.dart';
import 'package:practice/ListTileWidget.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameArr = [
      'Akash',
      'rana',
      'naim',
      'rahim',
      'karim',
      'shamim',
      'Akash',
      'rana',
      'naim',
      'rahim',
      'karim',
      'shamim'
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text("Custom Widget"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const Circle_Avatar(),
            ListTileWidget(nameArr: nameArr),
            const SquareContainer()
          ],
        ));
  }
}

class SquareContainer extends StatelessWidget {
  const SquareContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        // color: Colors.green,
        child: ListView.builder(itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              color: Colors.blue,
              width: 60,
              height: 50,
            ),
          );
        },scrollDirection: Axis.horizontal,),
      ),
    );
  }
}


class Circle_Avatar extends StatelessWidget {
  const Circle_Avatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        // color: Colors.pink,
        child: ListView.separated(
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.green,
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              height: 10,
              thickness: 2,
            );
          },
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
