import 'package:flutter/material.dart';

class Travel extends StatelessWidget {
  const Travel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Travel"),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("images/nature.jpg",width: double.infinity,fit: BoxFit.cover,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Nature",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: const [
                    Icon(Icons.star),
                    Text(
                      "90.0",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                )
              ],
            ),
            const Text(
              "Beautiful Nature",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              // margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [Icon(Icons.phone), Text("CALL")],
                  ),
                  Column(
                    children: const [Icon(Icons.share), Text("SHARE")],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.location_city),
                      Text("LOCATION")
                    ],
                  ),
                ],
              ),
            ),
            const Text(
              "Click Insert and then choose the elements you want from the different galleries. Themes and styles also help keep your document coordinated. When you click Design and choose a new Theme, the pictures, charts, and SmartArt graphics change to match your new theme. When you apply styles, your headings change to match the new theme. Save time in Word with new buttons that show up where you need them. Click Insert and then choose the elements you want from the different galleries. Themes and styles also help keep your document coordinated. When you click Design and choose a new Theme, the pictures, charts, and SmartArt graphics change to match your new theme. When you apply styles, your headings change to match the new theme. Save time in Word with new buttons that show up where you need them.",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
