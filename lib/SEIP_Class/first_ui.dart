import 'package:flutter/material.dart';
class FirstUI extends StatelessWidget {
  const FirstUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          title: Text("FINTIMES",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.greenAccent,
          elevation: 0,
          actions: [Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.menu,color: Colors.black,),
          )],
        ),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              flex: 3,
                child: Container(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  color: Colors.greenAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 11,),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 35,
                          width: 150,
                          color: Colors.black,
                          child: Center(child: Text("TOP APP'22",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        // child: RichText(
                        //     text: TextSpan(
                        //   text: "Introducitn the first ",style: TextStyle(color: Colors.black,fontSize: 16),
                        //   children: [
                        //     TextSpan(text: "All-in-one tool ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 16)),
                        //     TextSpan(text: "help you put put your finincial Assets in the best possible opporturites help you put put your finincial Assets in the best possible opporturites help you put put your finincial Assets in the best possible opporturites ",style: TextStyle(fontSize: 16,color: Colors.black,))
                        //   ]
                        // )
                        //
                        // ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text("Introducitn the first",style: TextStyle(color: Colors.black,fontSize: 20)),
                                Text(" All-in-one tool",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                                Text(" to",style: TextStyle(color: Colors.black,fontSize: 20,)),
                              ],
                            ),
                            Text("help you put put your finincial Assets in the best possible opporturites",style: TextStyle(color: Colors.black,fontSize: 20,))
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            SizedBox(height: 10,),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.greenAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Strategy",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w400),),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.play_arrow,color: Colors.black,),
                            )
                          ],
                        ),
                        SizedBox(height: 25,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("INVESTMENT PROCESS",style: TextStyle(fontSize: 16,),),
                            CircleAvatar(
                              backgroundColor: Colors.greenAccent,
                              child: Icon(Icons.arrow_forward,color: Colors.black,),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
            SizedBox(height: 10,),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.greenAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Team",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w400),),
                            Container(
                              height: 50,
                              width: 70,
                              child: Stack(
                                children: [
                                  Positioned(
                                    top:0,
                                    left: 0,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      backgroundImage: AssetImage("images/akash.JPG"),
                                    ),
                                  ),
                                  Positioned(
                                    top:0,
                                    left: 30,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      backgroundImage: AssetImage("images/boy.png"),
                                    ),
                                  ),
                                ],
                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 25,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("CHECK OUR EXPERTS",style: TextStyle(fontSize: 16,),),
                            CircleAvatar(
                              backgroundColor: Colors.greenAccent,
                              child: Icon(Icons.arrow_forward,color: Colors.black,),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
            SizedBox(height: 10,),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.greenAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 2),
                              color: Colors.black,
                              child: Text("W",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              // color: Colors.black,
                              child: Text("I",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 2),
                              color: Colors.black,
                              child: Text("R",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              // color: Colors.black,
                              child: Text("E",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 2),
                              color: Colors.black,
                              child: Text("D",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                            ),

                          ],
                        ),
                        SizedBox(height: 25,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("OUR PARTNERS",style: TextStyle(fontSize: 16,),),
                            CircleAvatar(
                              backgroundColor: Colors.greenAccent,
                              child: Icon(Icons.arrow_forward,color: Colors.black,),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
