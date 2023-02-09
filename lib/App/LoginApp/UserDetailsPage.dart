import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practice/DrawerDemo.dart';
import 'package:sidebarx/sidebarx.dart';

import '../../DrawerCustom.dart';


class UserDetailsPage extends StatefulWidget {
  UserDetailsPage({Key? key}) : super(key: key);

  @override
  State<UserDetailsPage> createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
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

  var opacityValue = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 0),() {
      setState(() {
        opacityValue = 1.0;
      });
    },);
  }
  // GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();
  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  final _scaffold = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("User Details"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
        key: _scaffold,
      drawer: ExampleSidebarX(controller: _controller),
      body: AnimatedOpacity(
        opacity: opacityValue,
        duration: Duration(seconds: 1),
        child: ListView.separated(itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(backgroundImage: AssetImage("images/boy.png"),backgroundColor: Colors.blue,),
            title: Text("${arrData[index]['Name']}"),
            subtitle: Text("${arrData[index]['Mobile']}"),
            trailing: const FaIcon(FontAwesomeIcons.phone,size: 15,color: Colors.blue,),
          );
        }, separatorBuilder: (context, index) {
          return const Divider(height: 5,thickness: 2,);
        }, itemCount: arrData.length),
      )
    );
  }
}
