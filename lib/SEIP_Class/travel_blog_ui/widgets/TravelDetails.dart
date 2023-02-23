import 'package:flutter/material.dart';
import 'package:practice/SEIP_Class/travel_blog_ui/Model/TravelDetailsList.dart';
class TravelInfo extends StatelessWidget {
  TravelInfo({Key? key}) : super(key: key);
  final travel_list = TravelDetailsList.TravelDetailsInfo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: travel_list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var travel = travel_list[index];
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10,bottom: 20),
                child: Card(
                  color: Colors.white,
                  elevation: 1,
                  child: Image.asset(travel.img,fit: BoxFit.cover,width: MediaQuery.of(context).size.width*.85,height: MediaQuery.of(context).size.height,),
                ),
              ),
              Positioned(
                bottom: 70,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(travel.location,style: TextStyle(fontSize: 20),),
                    SizedBox(height: 7,),
                    Text(travel.placeName,style: TextStyle(fontSize: 40))
                  ],
                ),
              ),
              const Positioned(
                bottom: 0,
                right: 30,
                child: CircleAvatar(
                  minRadius: 25,
                  backgroundColor: Colors.deepOrangeAccent,
                  child: Icon(Icons.arrow_forward,color: Colors.white,),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
