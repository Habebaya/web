import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/responsive.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../const/color_constant.dart';

class SectionTitle extends StatelessWidget {
  String? title;
  String? description;
  bool? isOffering;

  SectionTitle({
    super.key,
    required this.title,
    required this.description,
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
                    fontWeight: FontWeight.w700,
                    color: ConstantColor.blackColor,
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
                      fontWeight: FontWeight.w700,
                      color: ConstantColor.blackColor,
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
          // isOffering!
          //     ? Html(
          //   shrinkWrap: true,
          //       data: description,
          //     )
          //     :
          SizedBox(
            width: isOffering!
                ? MediaQuery.of(context).size.width * 0.6
                : MediaQuery.of(context).size.width * 0.6,
            child: Text(
              description!,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: ConstantColor.subTitleGrayColor,
                  fontSize: 20,
                  height: 0),
              maxLines: 5,
              textAlign: isOffering! ? TextAlign.start : TextAlign.center,
            ),
          )
        ]);
  }
}
