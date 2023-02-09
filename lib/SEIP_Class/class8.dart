import 'package:flutter/material.dart';

class Day8 extends StatefulWidget {
  const Day8({Key? key}) : super(key: key);

  @override
  State<Day8> createState() => _Day8State();
}

class _Day8State extends State<Day8> {
  var msg = "";
  var flg = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons(SEID: 328505)"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shadowColor: Colors.green,
                    backgroundColor: Colors.amber,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(21))),
                onPressed: () {
                  setState(() {
                    if (flg) {
                      msg = 'Clicked';
                      flg = false;
                    } else {
                      msg = "";
                      flg = true;
                    }
                  });
                },
                child: const Text(
                  "Click",
                  style: TextStyle(fontSize: 25),
                )),
            OutlinedButton(onPressed: () {}, child: Text("OutButton")),
            IconButton(onPressed: () {}, icon: Icon(Icons.person)),
            OutlinedButton.icon(
                onPressed: () {}, icon: Icon(Icons.add), label: Text("Icon")),
            FloatingActionButton(
              backgroundColor: Colors.amber,
              splashColor: Colors.green,
              child: Icon(Icons.add),
              onPressed: () {},
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (flg) {
                    msg = 'Clicked';
                    flg = false;
                  } else {
                    msg = "";
                    flg = true;
                  }
                });
              },
              child: Container(
                width: 120,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 0.8,
                          offset: Offset(3.9, 2.0))
                    ]),
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      height: 45,
                      decoration: const BoxDecoration(
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(55)
                          )),
                      child: Icon(Icons.home),
                    ),
                    Text(" Home",style: TextStyle(fontWeight: FontWeight.w600),)
                  ],
                ),
              ),
            ),
            //Custom Button
            SizedBox(height: 11,),
            Text("$msg")
          ],
        ),
      ),
    );
  }
}
