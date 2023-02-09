import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:practice/App/LoginApp/HomePage.dart';
import 'package:practice/App/LoginApp/UserDetailsPage.dart';
import 'package:practice/App/LoginApp/LogoutPage.dart';
class BottomNavBarForLoginApp extends StatefulWidget {
  const BottomNavBarForLoginApp({Key? key}) : super(key: key);

  @override
  State<BottomNavBarForLoginApp> createState() => _BottomNavBarForLoginAppState();
}

class _BottomNavBarForLoginAppState extends State<BottomNavBarForLoginApp> {
  List pages = [HomePage(),UserDetailsPage(),LogoutPage()];
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.orangeAccent,
        color: Colors.blue,
        height: 60,
        animationCurve: Curves.easeInOut,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          Icon(Icons.home,size: 30,color: Colors.black,),
          Icon(Icons.people,size: 30,color: Colors.black,),
          Icon(Icons.logout,size: 30,color: Colors.black,)
        ],
      ),
    );
  }
}
