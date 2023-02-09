import 'package:flutter/material.dart';

class RoudedButton extends StatelessWidget {
  const RoudedButton({Key? key, required this.btnName, this.icon, this.bgColor = Colors.blue, this.textStyle, this.voidCallback, required this.width,}) : super(key: key);
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? voidCallback;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width,
        child: ElevatedButton(onPressed: () {
          voidCallback!;
        },
        style: ElevatedButton.styleFrom(
          // backgroundColor: bgColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
          shadowColor: bgColor,
          backgroundColor: bgColor,
        ), child: icon != null? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon!,
            Text(btnName,style: textStyle,)
          ],
        ):Text(btnName,style: textStyle,),),
      ),
    );
  }
}
