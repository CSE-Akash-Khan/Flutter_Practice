import 'package:flutter/material.dart';
class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Add",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Searach"
          ),
        ],
      ),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
          elevation: 12,
          shadowColor: Colors.orange,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2),
              color: Colors.orange,
              boxShadow: [
                BoxShadow(
                  blurRadius: 12,
                  color: Colors.orange,
                  spreadRadius: 5
                )
              ],
            ),
            height: 100,
            width: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/boy.png',),
            ),
          ),
        ),
      ),
    );
  }
}
