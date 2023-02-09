import 'package:flutter/material.dart';
class TweenAnimation extends StatefulWidget {
  const TweenAnimation({Key? key}) : super(key: key);

  @override
  State<TweenAnimation> createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation animation;
  late Animation colorAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 10));
    animation = Tween(begin: 0.0,end: 300.0).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.green,end: Colors.blue).animate(animationController);
    animationController.addListener(() {
      setState(() {

      });
    });

    animationController.forward();//start animation

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tween Animation"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: animation.value,
          height: animation.value,
          color: colorAnimation.value,
        ),
      ),
    );
  }
}
