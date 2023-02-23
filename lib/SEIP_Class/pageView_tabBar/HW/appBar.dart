import 'package:flutter/material.dart';
class Appbar extends StatelessWidget {
  const Appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      width: double.maxFinite,
      color: Colors.white,
      child: Row(
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.only(left: 8),
                  shape: CircleBorder(),
                ),
                onPressed: () {},
                child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
          ),
          SizedBox(width: 14,),
          Text("Education",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
          Spacer(),
          Container(
            // margin: EdgeInsets.only(right: 12),
            width: 60,
            height: 60,
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.only(right: 0),
                  shape: CircleBorder(),
                ),
                onPressed: () {},
                child: Icon(Icons.search,color: Colors.black,)),
          ),
        ],
      ),
    );
  }
}