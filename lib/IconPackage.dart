import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class IconPackage extends StatelessWidget {
  const IconPackage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icons"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FaIcon(FontAwesomeIcons.google,size: 30,color: Colors.green,),
            FaIcon(FontAwesomeIcons.amazon,size: 35,),
            FaIcon(FontAwesomeIcons.person,size: 35,)
          ],
        ),
      ),
    );
  }
}
