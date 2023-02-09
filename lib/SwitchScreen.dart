import 'package:flutter/material.dart';
import 'package:practice/App/CalculatorApp.dart';
import 'package:practice/HomePage.dart';
class SwitchScreen extends StatelessWidget {
  SwitchScreen({Key? key}) : super(key: key);
  var NameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("WellCome",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.orangeAccent),),
            SizedBox(height: 10,),
            SizedBox(
              width: 200,
              height: 40,
              child: TextField(
                controller: NameController,
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)
                    )
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent),
                onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => CalculatorApp(),));
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(nameFromHome: NameController.text.toString()),));
            }, child: Text("Pass Data"))
          ],
        ),
      ),
    );
  }
}
