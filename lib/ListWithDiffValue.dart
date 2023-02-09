import 'package:flutter/material.dart';

class ListWithDifferentValue extends StatelessWidget {
  ListWithDifferentValue({Key? key}) : super(key: key);

  var arrData = [
    {'Name': 'Akash', 'Mobile': '01766738256', 'Unread': '2'},
    {'Name': 'Rana', 'Mobile': '0186675256', 'Unread': '1'},
    {'Name': 'Kawsar', 'Mobile': '01966738256', 'Unread': '4'},
    {'Name': 'Sohel', 'Mobile': '01566738256', 'Unread': '7'},
    {'Name': 'Akash', 'Mobile': '01766738256', 'Unread': '2'},
    {'Name': 'Rana', 'Mobile': '0186675256', 'Unread': '1'},
    {'Name': 'Kawsar', 'Mobile': '01966738256', 'Unread': '4'},
    {'Name': 'Sohel', 'Mobile': '01566738256', 'Unread': '7'},
    {'Name': 'Akash', 'Mobile': '01766738256', 'Unread': '2'},
    {'Name': 'Rana', 'Mobile': '0186675256', 'Unread': '1'},
    {'Name': 'Kawsar', 'Mobile': '01966738256', 'Unread': '4'},
    {'Name': 'Sohel', 'Mobile': '01566738256', 'Unread': '7'},
    {'Name': 'Akash', 'Mobile': '01766738256', 'Unread': '2'},
    {'Name': 'Rana', 'Mobile': '0186675256', 'Unread': '1'},
    {'Name': 'Kawsar', 'Mobile': '01966738256', 'Unread': '4'},
    {'Name': 'Sohel', 'Mobile': '01566738256', 'Unread': '7'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List With Value"),
        centerTitle: true,
      ),

      // body: ListView(
      //   children: arrData.map((value) {
      //     return ListTile(
      //       leading: Icon(Icons.person),
      //       title: Text(value['Name'].toString()),
      //       subtitle: Text(value['Mobile'].toString()),
      //       trailing: CircleAvatar(radius: 12,backgroundColor: Colors.blue,child: Text(value['Unread'].toString()),),
      //     );
      //   }).toList(),
      // ),
      body: ListView.separated(itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.person),
          title: Text(arrData[index]['Name'].toString()),
          subtitle: Text(arrData[index]['Mobile'].toString()),
          trailing: CircleAvatar(radius: 10,backgroundColor: Colors.blue,child: Text(arrData[index]['Unread'].toString()),),
        );
      }, separatorBuilder: (context, index) {
          return const Divider(height: 5,thickness: 2,);
      }, itemCount: arrData.length),
    );
  }
}
