import 'package:flutter/material.dart';
class SearchDemo extends StatelessWidget {
  const SearchDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        image: DecorationImage(
          image: AssetImage("images/job_image/search_bg.png"),
          fit: BoxFit.cover
        )
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 14,top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Fast Search",style: TextStyle(fontSize: 25,color: Colors.white),),
            SizedBox(height: 8,),
            Text("You  can Search quickly for \nthe you want",style: TextStyle(fontSize: 23,color: Colors.white)),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(right: 40),
              height: 55,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(21)
              ),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.search),
                  SizedBox(width: 10,),
                  Text("Search")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
