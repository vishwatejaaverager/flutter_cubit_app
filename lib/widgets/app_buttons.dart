import 'package:flutter/material.dart';
import 'package:flutter_cubit/widgets/app_text.dart';

import '../misc/colors.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color backGroundColor;
  double size;
  IconData? icon;
  final Color borderColor;
  String? text;
  bool? isIcon;

  AppButtons(
      {required this.color,
      required this.backGroundColor,
      required this.borderColor,
      required this.size,
      this.text = "hi",
      this.icon,
       this.isIcon = false
       });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1.0),
          borderRadius: BorderRadius.circular(15),
          color: AppColors.buttonBackground),
      child: isIcon == false ? Center(child: AppText(text: text!,color: Colors.black,)) : Center(child: Icon(icon,color: color,))
    );
  }
}
