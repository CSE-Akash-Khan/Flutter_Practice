import 'package:flutter/material.dart';

import 'ListTileWidget.dart';
class AllTypesListView extends StatelessWidget {
  const AllTypesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameArr = ['Akash','rana','naim','rahim','karim','shamim','Akash','rana','naim','rahim','karim','shamim'];
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: ListTileWidget(nameArr: nameArr),

      //todo:ListView.separated
      // body: ListView.separated(itemBuilder: (context, index) {
      //   return Container(
      //     height: 50,
      //     child: Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text(nameArr[index],style: TextStyle(fontSize: 20),),
      //     ),
      //   );
      // }, separatorBuilder: (context, index) {
      //   return Divider(height: 10,thickness: 5,color: Colors.grey,);
      // }, itemCount: nameArr.length),

      //todo: listView.builder
      // body: ListView.builder(itemBuilder: (context, index) {
      //   return Container(
      //     height: 50,
      //     child: Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text(nameArr[index],style: TextStyle(fontSize: 20),),
      //     ),
      //   );
      // },
      // itemCount: nameArr.length,
      // // scrollDirection: Axis.horizontal,
      //   itemExtent: 100,
      // ),
    );
  }
}

