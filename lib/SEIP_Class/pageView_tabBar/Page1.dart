import 'package:flutter/material.dart';
class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 270,
            // width: MediaQuery.of(context).size.width * .7,
            width: double.maxFinite,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 100,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.white,
                  elevation: .1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  // color: Colors.purple,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 180,
                        width: MediaQuery.of(context).size.width * .7,
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.circular(21),
                          image: DecorationImage(
                            // image: NetworkImage("https://i.pngimg.me/thumb/f/720/6063646522212352.jpg"),
                            image: AssetImage("images/kid.jpg"),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                      SizedBox(height: 7,),
                      Text("5 min read",style: TextStyle(fontSize: 14,color: Colors.black54),),
                      SizedBox(height: 10,),
                      Text("My Child Has Been \nDiagonsed with ADHD - ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                    ],
                  )
                );
              },
            ),
          ),
          SizedBox(height: 30,),
          ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 15,
            shrinkWrap: true,
            itemBuilder: (context, index) {
            return Container(
              height: 120,
              // color: Colors.blue,
              width: double.maxFinite,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 110,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("images/parentKid.jpg"),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                  ),
                  // SizedBox(width: 20,),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("r/worldnews",style: TextStyle(fontSize: 14,color: Colors.black54),),
                          SizedBox(height: 8,),
                          Text("Thr DIferent Types of Laser Eye Surgery",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },),
        ],
      ),
    );
  }
}
