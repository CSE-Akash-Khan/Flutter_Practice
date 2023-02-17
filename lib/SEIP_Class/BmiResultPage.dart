import 'package:flutter/material.dart';

import 'bmi_calculator.dart';
class BmiResultPage extends StatelessWidget {
  BmiResultPage({Key? key,required this.bmiResult}) : super(key: key);

  double? bmiResult;

  @override
  Widget build(BuildContext context) {

    TextStyle myTextStyle = TextStyle(color: Color(0xff08FF7A),fontSize: 35,fontWeight: FontWeight.w500);
    TextStyle tipsTextStyle = TextStyle(color: Colors.white70,fontSize: 21);

    var height =  MediaQuery.of(context).size.height;
    var width =  MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: BMICalaularorSeipState.bgColor,
      appBar: AppBar(
        backgroundColor: BMICalaularorSeipState.bgColor,
        elevation: 0,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 45)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Your Result:",style: TextStyle(color: Colors.white,fontSize: 35),),
          SizedBox(height: 8,),
          // Icon(Icons.arrow_back_ios,color: Colors.white,size: 50,),

          SizedBox(height: 25,),
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.9,

            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              ),
              margin: EdgeInsets.only(left: width*0.1),
              color: BMICalaularorSeipState.cardColor,
              // color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    bmiResult! < 18 ? Text("UnderWeight",style: myTextStyle,) : bmiResult! > 24 ?Text("Over Weight",style: myTextStyle,) : Text("Normal",style: myTextStyle,),

                    SizedBox(height: 50,),
                    Text("${bmiResult?.toStringAsFixed(2)}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 40),),
                    Spacer(),
                    Text(bmiResult! <18? "Eat More" : bmiResult! > 24? "Eat less and do exercise" : "Stay this way",style: tipsTextStyle,),
                    Text("",)

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
