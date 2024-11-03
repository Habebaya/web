import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/home/responsive.dart';
import 'package:turn_digital_dashboard_test/shares/app_button.dart';

import 'color_constant.dart';

class SectionTitle extends StatelessWidget {
  String title;
  String description;
  String? buttonTitle;
  bool? includeButton;
  Color? descriptionColor;

  SectionTitle(
      {super.key,
      required this.title,
      required this.description,
        this.descriptionColor,
       this.buttonTitle,this.includeButton = true});

  @override
  Widget build(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                color: ConstantColor.primaryColor,
                fontSize: 44,
              ),
            ),
            if(includeButton!)

              AppButton(
                width: 155,
                height: 46,
                buttonColor: ConstantColor.primaryColor,
                hoverColor: Colors.transparent,
                hoverBorder: ConstantColor.primaryColor,
                buttonTitle: buttonTitle!,
                buttonTitleFontSize: 16,
                hoverTitleTextColor: Colors.black,
                titleTextColor: Colors.white,
                onPressed: () {})
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          description,
          style:  TextStyle(
            fontWeight: FontWeight.w400,
            color: descriptionColor == null? ConstantColor.blackColor:descriptionColor,
            fontSize: 18,
          ),
          maxLines: 3,
        ),
      ]);
    } else {
      return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            color: ConstantColor.primaryColor,
            fontSize: 44,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          description,
          style:  TextStyle(
              fontWeight: FontWeight.w400,
              color: descriptionColor == null? ConstantColor.blackColor:descriptionColor,
              fontSize: 18,
              letterSpacing: 1.5),
          softWrap: true,
          maxLines: 10,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 20,
        ),
        if(includeButton!)
        AppButton(
            width: 155,
            height: 46,
            buttonColor: ConstantColor.primaryColor,
            hoverColor: Colors.transparent,
            hoverBorder: ConstantColor.primaryColor,
            buttonTitle: buttonTitle!,
            buttonTitleFontSize: 16,
            hoverTitleTextColor: Colors.black,
            titleTextColor: Colors.white,
            onPressed: () {}),
      ]);
    }
  }
}
