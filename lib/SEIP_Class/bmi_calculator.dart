import 'package:flutter/material.dart';
import 'package:practice/SEIP_Class/BmiResultPage.dart';

class BMICalaularorSeip extends StatefulWidget {
  const BMICalaularorSeip({Key? key}) : super(key: key);

  @override
  State<BMICalaularorSeip> createState() => BMICalaularorSeipState();
}



class BMICalaularorSeipState extends State<BMICalaularorSeip> {
  static Color cardColor = Color(0xFF1A1F38);
  static Color bgColor = Color(0xFF0A0E21);

  bool isMale = true;
  int weight = 71;
  int age = 23;
  int height = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
        backgroundColor: cardColor,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Row(
              children: [
                Expanded(
                  flex: 10,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Card(
                      color:
                          isMale == false ? Colors.lightBlueAccent : cardColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            size: 45,
                            color: Colors.white,
                          ),
                          Text(
                            "Female",
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Card(
                      color: isMale ? Colors.lightBlueAccent : cardColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            size: 45,
                            color: Colors.white,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 10,
              child: Card(
                  color: cardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.ideographic,
                        children: [
                          Text("${height}",
                              style:
                                  TextStyle(fontSize: 35, color: Colors.white)),
                          Text(
                            "CM",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Slider(
                        activeColor: Colors.pinkAccent,
                          inactiveColor: Colors.grey,

                          value: height.toDouble(),
                        min: 100,
                        max: 600,
                        divisions: 500,
                        onChanged: (value) {
                          setState(() {
                            height = value.toInt();
                          });
                        },
                      )
                    ],
                  ))),
          Expanded(
            flex: 10,
            child: Row(
              children: [
                Expanded(
                  flex: 10,
                  child: Card(
                    color: cardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                        Text("$weight",
                            style:
                                TextStyle(fontSize: 35, color: Colors.white)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 40,
                              width: 40,
                              child: FloatingActionButton(
                                backgroundColor: Colors.white,
                                onPressed: () {
                                  setState(() {
                                    if (weight > 1) {
                                      weight--;
                                    }
                                  });
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: bgColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: 40,
                              width: 40,
                              child: FloatingActionButton(
                                backgroundColor: Colors.white,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  color: bgColor,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Card(
                    color: cardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                        Text("$age",
                            style:
                                TextStyle(fontSize: 35, color: Colors.white)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 40,
                              width: 40,
                              child: FloatingActionButton(
                                backgroundColor: Colors.white,
                                onPressed: () {
                                  setState(() {
                                    if (age > 1) {
                                      age--;
                                    }
                                  });
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: bgColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: 40,
                              width: 40,
                              child: FloatingActionButton(
                                backgroundColor: Colors.white,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  color: bgColor,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                minWidth: double.maxFinite,
                color: Colors.red,
                height: 20,
                onPressed: () {
                  double h1 = height / 100;
                  var heightSqr = h1 * h1;
                  double result = weight / heightSqr.toDouble();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BmiResultPage(bmiResult: result)));
                  print(result);
                },
                child: Text("Calculate"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
