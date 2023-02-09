import 'package:flutter/material.dart';
class RowColumn extends StatelessWidget {
  const RowColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Column"),
        centerTitle: true,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 400,
            width: width*.5,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 25,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.blueAccent),
                    color: Colors.grey.shade300
                  ),
                  child: Center(child: Text("Strawberry Pavlobva")),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  height: 150,
                  width: width*.5,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.blueAccent),
                      color: Colors.grey.shade300
                  ),
                  child:  Text("simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 25,
                  width: width*.5,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.blueAccent),
                      color: Colors.grey.shade300
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Row(
                          children: const [
                            Icon(Icons.star,size: 20,color: Colors.grey,),
                            Icon(Icons.star,size: 20,color: Colors.grey,),
                            Icon(Icons.star,size: 20,color: Colors.grey,),
                          ],
                        ),
                      ),
                      Text("170 Review")
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  height: 100,
                  width: width*.5,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.blueAccent),
                      color: Colors.grey.shade300
                  ),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.location_city),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text("PREP"),
                          ),
                          SizedBox(height: 5,),
                          Text("25 min")
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.lock_clock),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text("CLK"),
                          ),
                          SizedBox(height: 5,),
                          Text("1 hr")
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.location_city),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text("PREP"),
                          ),
                          SizedBox(height: 5,),
                          Text("25 min")
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 9),
            height: 333,
            width: width*.5,
            child: Image.asset("images/akash.JPG", fit: BoxFit.cover,),
          ),
        ],
      ),
    );
  }
}
