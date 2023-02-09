import 'dart:async';

import 'package:flutter/material.dart';
import 'package:practice/App/LoginApp/LoginPage.dart';
import 'package:practice/App/LoginApp/SplashScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogoutPage extends StatefulWidget {
  LogoutPage({Key? key}) : super(key: key);

  @override
  State<LogoutPage> createState() => _LogoutPageState();
}

class _LogoutPageState extends State<LogoutPage> {
  var opacityValue = 0.0;
  var name = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 0),() {
      setState(() {
        opacityValue = 1.0;
      });

    },);

    getName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedOpacity(
          duration: Duration(seconds: 1),
          opacity: opacityValue,
          child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          Center(
            child: CircleAvatar(
              radius: 70,
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage("images/boy.png"),
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Text(name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21),),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, minimumSize: Size(100, 35)),
              onPressed: () async {
                myDialog();
              },
              child: Text("Logout"))
      ],
    ),
        ));
  }

  Future<void> getName() async {
    var pref = await SharedPreferences.getInstance();
    var nameValue = pref.getString("userId");
    name = nameValue != null?nameValue : "Empty Name";
    setState(() {

    });
  }

  void myDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 100,
          width: 250,
          child: AlertDialog(
            backgroundColor: Colors.white,
            title: Text("Alert Dialog"),
            content: Text("Do you want to delete."),
            actions: [
              TextButton(onPressed: () async {
                var pref = await SharedPreferences.getInstance();
                pref.setBool(LoginAppSplashScreenState.KEYLOGIN, false);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),));
              }, child: Text("Yes")),
              TextButton(onPressed: () {
                Navigator.pop(context);
              }, child: Text("No")),
            ],
          ),
        );
      },
    );
  }

}
