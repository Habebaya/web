import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../const/color_constant.dart';

class SectionTitle extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final bool? isOffering;

  const SectionTitle({
    super.key,
    required this.title,
    required this.subTitle,
    this.isOffering = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:
            isOffering! ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: [
          if (!isOffering!)
            Center(
              child: Text(
                title!,
                style: const TextStyle(
                    fontFamily: 'Avenir LT Std',
                    fontWeight: FontWeight.bold,
                    color: StaticColors.blackColor,
                    fontSize: 50),
              ),
            ),
          if (isOffering!)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title!,
                  style: const TextStyle(
                      fontFamily: 'Avenir LT Std',
                      fontWeight: FontWeight.bold,
                      color: StaticColors.blackColor,
                      fontSize: 50),
                ),
                SvgPicture.asset(
                  "assets/icon/arrow_offering.svg",
                  width: 100,
                ),
              ],
            ),
          SizedBox(
            height: isOffering! ? 5 : 16,
          ),
          subTitle!.trim().startsWith("<div>")
              ? Html(
                  shrinkWrap: true,
                  data: subTitle,
                  style: {
                    "body": Style(
                      fontSize: FontSize(24),
                      // Font size 60
                      fontFamily: 'Avenir LT Std',
                      // Custom font family
                      textAlign: TextAlign.center,
                      fontStyle: FontStyle.normal,
                    ),
                  },
                )
              : Text(
                  subTitle!,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Avenir LT Std',
                      fontSize: 18),
                ),
        ]);
  }
}
