import 'dart:ffi';

import 'package:flutter/material.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  var field1Controller = TextEditingController();
  var field2Controller = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator App"),
        centerTitle: true,
        backgroundColor: Colors.grey,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back_ios)),
      ),
      body: Container(
        color: Colors.grey.shade50,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                child: TextField(
                  controller: field1Controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter 1st value",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: Colors.orangeAccent, width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 200,
                child: TextField(
                  controller: field2Controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter 2nd value",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: Colors.orangeAccent, width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        var val1 = int.parse(field1Controller.text.toString());
                        var val2 = int.parse(field2Controller.text.toString());
                        var sum = (val1 + val2);
                        result = "$sum";
                        setState(() {});
                      },
                      child: Text("Add"),
                      style: ButtonStyle(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        var val1 = int.parse(field1Controller.text.toString());
                        var val2 = int.parse(field2Controller.text.toString());
                        var sum = (val1 - val2);
                        result = "$sum";
                        setState(() {});
                      },
                      child: Text("Sub"),
                      style: ButtonStyle(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        var val1 = int.parse(field1Controller.text.toString());
                        var val2 = int.parse(field2Controller.text.toString());
                        var sum = (val1 * val2);
                        result = "$sum";
                        setState(() {});
                      },
                      child: Text("Mul"),
                      style: ButtonStyle(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        var val1 = int.parse(field1Controller.text.toString());
                        var val2 = int.parse(field2Controller.text.toString());
                        var sum = (val1 / val2);
                        result = "${sum.toStringAsFixed(2)}";
                        setState(() {});
                      },
                      child: Text("div"),
                      style: ButtonStyle(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Result: $result",
                  style: TextStyle(fontSize: 25),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
