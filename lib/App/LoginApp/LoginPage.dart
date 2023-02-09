import 'dart:async';

import 'package:flutter/material.dart';
import 'package:practice/App/LoginApp/SplashScreen.dart';
import 'package:practice/SharedPreferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'BottomNavBar.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var idController = TextEditingController();

  var passwordController = TextEditingController();

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedOpacity(
        duration: Duration(seconds: 1),
        opacity: opacityValue,
        curve: Curves.linear,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(child: Icon(Icons.person,size: 40,color: Colors.white,),radius: 35,backgroundColor: Colors.orangeAccent,),
              SizedBox(height: 11,),
              Container(
                width: 250,
                child: TextField(
                  controller: idController,
                  decoration: InputDecoration(
                    label: Text("Enter User Id"),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.orangeAccent,width: 2)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.orange,width: 2)
                    ),
                  )
                ),
              ),
              SizedBox(height: 11,),
              Container(
                width: 250,
                child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      label: Text("Enter Password"),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.orangeAccent,width: 2)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.orange,width: 2)
                      ),
                    )
                ),
              ),
              SizedBox(height: 11,),
              ElevatedButton(onPressed: () async {
                var pref = await SharedPreferences.getInstance();//initialize
                pref.setBool(LoginAppSplashScreenState.KEYLOGIN, true);
                pref.setString("userId", idController.text.toString());
                pref.setString("password", passwordController.text.toString());
                Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBarForLoginApp(),));
              }, child: Text("Login"),style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent),)
            ],
          ),
        ),
      ),
    );
  }
}
