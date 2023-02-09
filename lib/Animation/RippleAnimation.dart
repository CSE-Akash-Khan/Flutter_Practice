import 'package:flutter/material.dart';
class RippleAnimation extends StatefulWidget {
  const RippleAnimation({Key? key}) : super(key: key);

  @override
  State<RippleAnimation> createState() => _RippleAnimationState();
}

class _RippleAnimationState extends State<RippleAnimation> with SingleTickerProviderStateMixin{
  var listRadious = [50.0,100.0,150.0,200.0,250.0,300.0];

 late AnimationController animationController;
  late Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 4),lowerBound: 0.5);
    animationController.repeat();
   //animation = Tween(begin: 0.0,end: 1.0).animate(animationController);
    animationController.addListener(() {
      setState(() {

      });
    });
    animationController.forward();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ripple Animation"),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            MyContainer(listRadious[0]),
            MyContainer(listRadious[1]),
            MyContainer(listRadious[2]),
            MyContainer(listRadious[3]),
            MyContainer(listRadious[4]),
            MyContainer(listRadious[5]),
            Icon(Icons.phone,color: Colors.white,size: 20,),
            ElevatedButton(onPressed: () {
              setState(() {
                
              });
              // startAnimation();
              animationController.forward();
            }, child: Text("Click"))
          ]
        ),
      ),
    );
  }
  Widget MyContainer(radious){
    return Container(
      height: radious*animationController.value,
      width: radious*animationController.value,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue.withOpacity(1.0-animationController.value)
      ),
    );
  }
}
