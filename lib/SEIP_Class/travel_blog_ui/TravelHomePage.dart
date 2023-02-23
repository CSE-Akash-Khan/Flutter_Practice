import 'package:flutter/material.dart';
import 'package:practice/SEIP_Class/travel_blog_ui/widgets/MostPopular.dart';
import 'package:practice/SEIP_Class/travel_blog_ui/widgets/TravelDetails.dart';
class TravelHomePage extends StatelessWidget {
  const TravelHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.menu,color: Colors.black,),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text("Travel Blog",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w500),),
            ),
            Expanded(
              flex: 2,
              child: TravelInfo(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Most Popular",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  TextButton(onPressed:(){}, child: Text("View all",style: TextStyle(color: Colors.redAccent,fontSize: 18),))
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: MostPopular(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  color: Colors.grey,
                  height: 5,
                  width: 150,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
