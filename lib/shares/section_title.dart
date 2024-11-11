import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/responsive.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../const/color_constant.dart';

class SectionTitle extends StatelessWidget {
  String title;
  String description;
  bool? isOffering;

  SectionTitle({
    super.key,
    required this.title,
    required this.description,
    this.isOffering = false,
  });

  @override
  Widget build(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return Column(
          crossAxisAlignment: isOffering!
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.center,
          children: [
            isOffering!
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              color: ConstantColor.blackColor,
                              fontSize: 60),
                        ),
                      ),
                      // if(isOffering!)
                      Expanded(
                          flex: 1,
                          child: SvgPicture.asset(
                              "assets/icon/arrow_offering.svg")),
                    ],
                  )
                : Center(
                    child: Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          color: ConstantColor.blackColor,
                          fontSize: 60),
                    ),
                  ),
            SizedBox(
              height: isOffering! ? 20 : 16,
            ),
            SizedBox(
              width: isOffering!
                  ? MediaQuery.of(context).size.width * 0.35
                  : MediaQuery.of(context).size.width * 0.6,
              child: Text(
                description,
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: ConstantColor.subTitleGrayColor,
                    fontSize: 20,
                    height: 0),
                maxLines: 3,
                textAlign: isOffering! ? TextAlign.start : TextAlign.center,
              ),
            )
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
          style: const TextStyle(
              fontWeight: FontWeight.w400,
              color: ConstantColor.blackColor,
              fontSize: 18,
              letterSpacing: 1.5),
          softWrap: true,
          maxLines: 10,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 20,
        ),
      ]);
    }
  }
}
