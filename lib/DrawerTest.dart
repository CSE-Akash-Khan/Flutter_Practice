import 'package:flutter/material.dart';
import 'package:practice/DrawerCustom.dart';
import 'package:sidebarx/sidebarx.dart';

import 'DrawerDemo.dart';

class DrawerTest extends StatefulWidget {
  DrawerTest({Key? key}) : super(key: key);

  @override
  State<DrawerTest> createState() => _DrawerTestState();
}

class _DrawerTestState extends State<DrawerTest> {
  // GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  final _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        key: _key,
        drawer: ExampleSidebarX(controller: _controller),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  _key.currentState!.openDrawer();
                },
                child: Container(
                  color: Colors.green,
                  padding: EdgeInsets.all(8.0),
                  child: Text("Click1"),
                ),
              ),
              SizedBox(height: 11,),
              InkWell(
                onTap: () {
                  _key.currentState!.openEndDrawer();
                },
                child: Container(
                  color: Colors.green,
                  padding: EdgeInsets.all(8.0),
                  child: Text("Click200"),
                ),
              ),
              ElevatedButton(onPressed: () {
                _key.currentState!.openEndDrawer();
              }, child: Text("Click 2"))
            ],
          ),
        )
    );
  }
}
