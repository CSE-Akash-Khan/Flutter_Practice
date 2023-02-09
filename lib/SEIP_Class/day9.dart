import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Day9 extends StatefulWidget {
  const Day9({Key? key}) : super(key: key);

  @override
  State<Day9> createState() => _Day9State();
}

class _Day9State extends State<Day9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded widget (SID:328505)"),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(
              child: Container(
                color: Colors.blue,
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                          color: Colors.blue,
                          child: Image.network("https://picsum.photos/250?image=9",fit: BoxFit.cover,),
                        )),
                    Expanded(
                        child: Container(
                          color: Colors.grey,
                          child: Image.network("https://picsum.photos/250?image=",fit: BoxFit.cover,),
                        )),
                    Expanded(
                        child: Container(
                          color: Colors.green,
                          child: Image.network("https://picsum.photos/250?image=7",fit: BoxFit.cover,),
                        )),
                    Expanded(
                        child: Container(
                          color: Colors.white,
                          child: Row(
                            children: [
                              Expanded(child: Center(child: Container(child: FaIcon(FontAwesomeIcons.facebook,size: 55,)))),
                              Expanded(flex:2,child: Container(color: Colors.green,child: Image.network("https://wallpaper-house.com/data/out/5/wallpaper2you_53828.jpg",fit: BoxFit.cover,),))
                            ],
                          ),
                        )),
                  ],
                ),
              )),
          Expanded(
              child: Container(
                color: Colors.lightBlueAccent,
                child: Column(
                  children: [
                    Expanded(child: Container(color: Colors.lightBlueAccent.shade100,child: Image.network("https://www.teahub.io/photos/full/253-2536481_full-hd-wallpapers-of-nature-mobile.jpg",fit: BoxFit.cover,),)),
                    Expanded(child:
                    Container(
                      color: Colors.orange,
                      child: Row(
                        children: [
                          Expanded(child: Container(
                            color: Colors.blueGrey,
                            child: Column(
                              children: [
                                Expanded(flex:2,child: Container(color: Colors.blueGrey,child: Image.network("https://wallpaper-house.com/data/out/5/wallpaper2you_53837.jpg",fit: BoxFit.cover,),)),
                                Expanded(child: Center(child: Container(child: FaIcon(FontAwesomeIcons.amazon,size: 80,color: Colors.white,)))),
                              ],
                            ),
                          )),
                          Expanded(child: Container(
                            color: Colors.green,
                            child: Column(
                              children: [
                                Expanded(child: Center(child: Container(child: FaIcon(FontAwesomeIcons.apple,size: 80,color: Colors.white,),))),
                                Expanded(flex:2,child: Container(color: Colors.white,child: Image.network("https://wallpaper-house.com/data/out/5/wallpaper2you_53830.jpg",fit: BoxFit.cover,))),
                              ],
                            ),
                          )),

                        ],
                      ),
                    )),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
