import 'package:flutter/material.dart';

import '../../const/color_constant.dart';

class NavigatorBarItem extends StatelessWidget {
  String title;
  int selectedIndex =1;

  NavigatorBarItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.toUpperCase(),
          style: const TextStyle(
            color: StaticColors.blackColor,
            fontSize: 20,
            fontFamily: 'Avenir LT Std',
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.center,
        ),
        Container(
          height: 5,
          width: 27,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: StaticColors.appTheme_55B,
            borderRadius: BorderRadius.circular(50)
          ),
        )
      ],
    );
  }
}
