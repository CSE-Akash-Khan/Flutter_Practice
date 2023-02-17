import 'package:flutter/material.dart';
class SimpleUI extends StatelessWidget {
  const SimpleUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250,
              width: double.maxFinite,
              child: Stack(
                children: [
                  Container(
                    width: double.maxFinite,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(21),
                      child: Image.network("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80",
                      fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 5,
                      top: 10,
                      child: CircleAvatar(
                    backgroundColor: Colors.white,
                        child: Icon(Icons.favorite,color: Colors.red,),
                        radius: 18,
                  ))
                ],
              ),
            ),
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text("Jack Rousy"),
            ),
            subtitle: Row(children: [Icon(Icons.location_city),Text("Hi I am Jack Rousy")],),
            trailing: Icon(Icons.male),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/boy.png"),
            ),
            title: Text("Akash khan",style: TextStyle(fontSize: 14),),
            subtitle: Row(children: [Text("Hi I am Akash")],),
            trailing: Column(children: [Text(""),Text("10 OCT 2023",style: TextStyle(fontSize: 10,color: Colors.black54),)],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.purpleAccent.withOpacity(0.4),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text("Age",style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Text("1 Year 2 Month",style: TextStyle(fontSize: 12,color: Colors.black54),)
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    color: Colors.black54,
                    width: 2,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text("Weight",style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Text("1 Kg 200 gm",style: TextStyle(fontSize: 12,color: Colors.black54),)
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
