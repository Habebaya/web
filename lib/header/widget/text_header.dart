import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../const/color_constant.dart';

class TextHeader extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final String? subTitle1;

  final String? description;

  final bool? isOffering;

  const TextHeader({
    super.key,
    required this.title,
    required this.subTitle,
    this.subTitle1,
    required this.description,
    this.isOffering = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0,bottom: 10),
          child: Text(
            title!,
            textAlign: TextAlign.start,
            style: const TextStyle(
                letterSpacing: 1.0,
                fontWeight: FontWeight.w400,
                fontFamily: 'Avenir LT Std',
                color: StaticColors.titleHeaderBlackColor,
                fontSize: 22),
          ),
        ),

        Html(
          shrinkWrap: true,
          data: '''
          <span style="color: #F27922;  font-weight: 700;">${subTitle} </span>
          <span style="color: #000000; font-weight: 700; ">${subTitle1}</span>
        ''',
          style: {
            "span": Style(
              textAlign: TextAlign.start,
              fontFamily: 'Avenir LT Std',
              fontSize: FontSize(75.0),
              lineHeight: const LineHeight(1.0), // Adjusts line height to approximate `height: 0`
            ),
          },
        ),
        Html(
          shrinkWrap: true,
          data: '''
          <p style="color: #565656;font-weight: 400; ">${description}</p>
        ''',
          style: {
            "p": Style(
              textAlign: TextAlign.start,
              // Aligns the entire text block to the start

              fontFamily: 'Avenir LT Std',
              fontSize: FontSize(20.0),
              // Sets the font size
              lineHeight: const LineHeight(
                  1.0), // Adjusts line height to approximate `height: 0`
            ),
          },
        ),
      ],
    );
  }
}
