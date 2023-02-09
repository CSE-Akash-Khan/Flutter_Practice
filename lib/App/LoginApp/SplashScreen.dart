import 'dart:async';

import 'package:flutter/material.dart';
import 'package:practice/App/LoginApp/LoginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'BottomNavBar.dart';
class LoginAppSplashScreen extends StatefulWidget {
  const LoginAppSplashScreen({Key? key}) : super(key: key);

  @override
  State<LoginAppSplashScreen> createState() => LoginAppSplashScreenState();
}

class LoginAppSplashScreenState extends State<LoginAppSplashScreen> {
  static const String KEYLOGIN = "Login";//if we use static we will use variable name capital latter
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    whichPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orangeAccent,
        child: Center(
          child: Text("Welcome",style: TextStyle(fontSize: 30,fontFamily: "CustomFont"),),
        ),
      ),
    );
  }

  Future<void> whichPage() async {
    var pref = await SharedPreferences.getInstance(); //initialize
    var loginStatus = pref.getBool(KEYLOGIN);
    Timer(const Duration(seconds: 2),() {
      if(loginStatus != null){
        if(loginStatus){//if true then direct home page
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavBarForLoginApp(),));
        }
        else{ //if false then login page
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),));
        }
      }else{ //if null the login page
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),));
      }
    },);

  }
}
