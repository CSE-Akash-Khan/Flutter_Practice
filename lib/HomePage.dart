import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   var nameFromHome;

   HomePage({required this.nameFromHome}); //constructor

var NameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Practice app"),
          centerTitle: true,
        ),
        body: Center(
          child:
              Text("$nameFromHome",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

        )
    );
  }
}
