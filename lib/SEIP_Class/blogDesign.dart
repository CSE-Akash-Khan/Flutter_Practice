import 'package:flutter/material.dart';

class BlogDesign extends StatelessWidget {
  const BlogDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.purple,
          onPressed: () {},
          label: Row(
            children: [Icon(Icons.add), Text("ADD ENTRY")],
          )),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Cleveland"),
        leading: Icon(Icons.arrow_back),
        actions: [Icon(Icons.more_vert)],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
        return SizedBox(

          height: MediaQuery.of(context).size.height * 0.43,
          width: 350,
          child: Card(
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            elevation: 10,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.93,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/fruits.jpg",),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Travel",style: TextStyle(fontSize: 21),),
                          SizedBox(height: 5,),
                          Text("5 cheap eats",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHXbffIPSvVpJ8Lyu-0MlD3YZCMIYBA5wstAiQlSZN&s",),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                  child: Text("So you have 1 day to spare in Cleveland these are the 5 spots you need to hit before you leave"
                  ,style: TextStyle(fontSize: 18,color: Colors.black54),),
                ),
                SizedBox(height: 8,),
                Row(
                  children: [
                    Container(
                      height: 2,
                        width: 12,
                      color: Colors.redAccent,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple
                      ),
                        onPressed: (){}, child: Text("VIEW ENTRY",selectionColor: Colors.white,)),
                    SizedBox(width: 11,),
                    Text("LEARN MORE",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.w500),),
                    Container(
                      height: 2,
                      width: MediaQuery.of(context).size.height * 0.20,
                      color: Colors.redAccent,
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },)
    );
  }
}
