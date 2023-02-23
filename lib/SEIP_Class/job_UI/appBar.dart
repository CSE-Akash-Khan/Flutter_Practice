import 'package:flutter/material.dart';
class App_Bar extends StatelessWidget {
  const App_Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40,left: 10),
                child: Text("Welcome Home\nAnnie Bryant",style: TextStyle(fontSize: 25),),
              )
            ],
          ),
          SizedBox(width: size.width*.28,),
          Stack(
            children: [
              Container(
                transform: Matrix4.rotationZ(100),
                  child: Icon(Icons.notifications_none_outlined,size: 40,color: Colors.grey.shade600)),
              Positioned(
                // height: 15,
                // width: 15,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle
                  ),
                ),
              )
            ],
          ),
          SizedBox(width:20),
          ClipOval(
            child: Image.asset("images/job_image/avatar.png",width: 40,),
          )
        ],
      ),
    );
  }
}
