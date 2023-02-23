import 'package:flutter/material.dart';

class StackTest extends StatelessWidget {
  const StackTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(

        itemCount: 30,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.6,),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Akash khan"),
                        SizedBox(height: 20,),
                        Icon(Icons.headphones,size: 50,),
                        SizedBox(height: 20,),
                        Icon(Icons.headphones,size: 50,)
                      ],
                    ),
                    Positioned(
                      top: 30,
                      right: 20,
                      child: Icon(Icons.access_alarm),
                    )
                  ],
                ),
              ),
            );
          },),
    );
  }
}
