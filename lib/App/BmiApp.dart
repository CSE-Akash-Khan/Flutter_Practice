import 'package:flutter/material.dart';
class BmiApp extends StatefulWidget {
  const BmiApp({Key? key}) : super(key: key);

  @override
  State<BmiApp> createState() => _BmiAppState();
}
var weight = TextEditingController();
var heightInFit = TextEditingController();
var heightInInch = TextEditingController();

var result = "";
var msg = "";
var bgColor;
class _BmiAppState extends State<BmiApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your BMI"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: bgColor,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("BMI",style: TextStyle(fontSize: 34,fontWeight: FontWeight.w700),),
                SizedBox(height: 11,),
                TextField(
                  controller: weight,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text("Enter Your Weight"),
                    prefixIcon: Icon(Icons.line_weight)
                  ),
                ),
                SizedBox(height: 11,),
                TextField(
                  controller: heightInFit,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      label: Text("Enter Your Height in Fit"),
                      prefixIcon: Icon(Icons.height)
                  ),
                ),
                SizedBox(height: 11,),
                TextField(
                  controller: heightInInch,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      label: Text("Enter Your Height in Inch"),
                      prefixIcon: Icon(Icons.height)
                  ),
                ),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: () {
                  var sWt = weight.text.toString();
                  var sHt_ft = heightInFit.text.toString();
                  var sHt_inc = heightInInch.text.toString();

                  if(sWt != "" && sHt_ft != "" && sHt_inc != ""){
                    var intWeight = int.parse(sWt);
                    var intHeiht = int.parse(sHt_ft);
                    var intHeightInch = int.parse(sHt_inc);


                    var heightInch = (intHeiht * 12) + intHeightInch;
                    var heightInCm = (heightInch * 2.54);
                    var heigtInM = (heightInCm / 100);
                    var bmi = intWeight / (heigtInM * heigtInM);

                    if(bmi > 25){
                      msg = "You are Over Weight";
                      bgColor = Colors.amber;
                    }else if(bmi < 18){
                      msg = "You are Under Weight";
                      bgColor = Colors.redAccent;
                    }else{
                      msg = "You are fit";
                      bgColor = Colors.lightGreen;
                    }
                    setState(() {
                      result = "$msg\n Your BMI is: ${bmi.toStringAsFixed(2)}";
                      bgColor;
                    });

                  }else{
                    setState(() {
                      result = "Please fill all the required blanks";
                    });
                  }

                }, child: Text("Calculate",)),
                SizedBox(height: 11,),
                Text("${result}",textAlign:TextAlign.center,style: TextStyle(fontSize: 16,),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
