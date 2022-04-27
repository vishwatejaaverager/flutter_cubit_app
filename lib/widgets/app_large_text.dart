import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {

  double size;
  final String text;
  final Color? color;
  AppLargeText({ this.color = Colors.black, this.size = 30,required this.text});
  


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold
      ),
    );
  }
}
