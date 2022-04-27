import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({this.isResponsive = false, this.width = 120});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive == true?double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor
        ),
        child: Row(
          mainAxisAlignment:  isResponsive == true?MainAxisAlignment.spaceBetween
           : MainAxisAlignment.center,
          children: [
            isResponsive == true ?AppText(
              text: "Book Trip Now",
              color: Colors.white,
            ) : Container(),
            Image.asset("img/button-one.png")
          ],
        ),
      ),
    );
  }
}
