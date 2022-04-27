import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_buttons.dart';
import 'package:flutter_cubit/widgets/app_large_text.dart';
import 'package:flutter_cubit/widgets/app_text.dart';
import 'package:flutter_cubit/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 3;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/mountain.jpeg"),
                        fit: BoxFit.cover),
                  ),
                )),
            Positioned(
                left: 10,
                top: 30,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                    ),
                  ],
                )),
            Positioned(
                top: 280,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                            text: "Yosemite",
                            color: Colors.black.withOpacity(0.8),
                            size: 22,
                          ),
                          AppLargeText(
                            text: "\$ 250",
                            color: AppColors.mainColor,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: AppColors.mainColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          AppText(
                            text: "USA , California",
                            color: AppColors.textColor1,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(
                                Icons.star,
                                color: index < gottenStars
                                    ? AppColors.starColor
                                    : AppColors.textColor2,
                              );
                            }),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          AppText(
                            text: "(4.0)",
                            color: AppColors.textColor2,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AppLargeText(
                        text: "People",
                        color: Colors.black.withOpacity(0.8),
                        size: 20,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      AppText(
                        text: "Number of people in ur group",
                        color: AppColors.mainTextColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        children: List.generate(5, (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: AppButtons(
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.black,
                                backGroundColor: selectedIndex == index
                                    ? Colors.black
                                    : AppColors.buttonBackground,
                                borderColor: selectedIndex == index
                                    ? Colors.black
                                    : AppColors.buttonBackground,
                                size: 40,
                                text: (index + 1).toString(),
                              ),
                            ),
                          );
                        }),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AppLargeText(
                        text: "Description",
                        color: Colors.black.withOpacity(0.8),
                        size: 22,
                      ),
                      AppText(
                          text:
                              "you must go for a travel . Travelling helps get rid opf pressure . go to mountains to see the nature ",
                          color: AppColors.mainColor),
                    ],
                  ),
                )
                ),
            Positioned(
              bottom: 10,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppButtons(
                    color: AppColors.textColor1,
                    backGroundColor: Colors.white,
                    borderColor: AppColors.textColor1,
                    size: 60,
                    isIcon: true,
                    icon: Icons.favorite_border,
                  ),
                  SizedBox(width: 20,),
                  ResponsiveButton(
                   isResponsive: true,
                  )
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
