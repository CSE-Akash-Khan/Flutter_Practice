import 'package:flutter/material.dart';
class Gradients extends StatelessWidget {
  const Gradients({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('radients Color'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xfffa709a),Color(0xfffee140)],
            begin: FractionalOffset(0.5,0.0),
            end: FractionalOffset(0.0,0.5)
          )
          // gradient: RadialGradient(
          //   center: Alignment.bottomCenter,
          //   colors: [Color(0x78fa709a),Color(0xfffee140)],
          // )
        ),
      ),
    );
  }
}
