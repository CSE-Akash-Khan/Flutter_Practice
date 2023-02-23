import 'package:flutter/material.dart';
import 'package:practice/SEIP_Class/travel_blog_ui/Model/TravelDetailsList.dart';
class MostPopular extends StatelessWidget {
   MostPopular({Key? key}) : super(key: key);
  final popularList = TravelDetailsList.PopularList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {

        var travel = popularList[index];
        return Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(travel.img,fit: BoxFit.cover,width: MediaQuery.of(context).size.width*.40,height: MediaQuery.of(context).size.height,),
            )
          ],
        );

      }, separatorBuilder: (context, index) => SizedBox(width: 13,), itemCount: popularList.length)
    );
  }
}
