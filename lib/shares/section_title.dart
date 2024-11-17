import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../const/color_constant.dart';

class SectionTitle extends StatelessWidget {
final  String? title;
 final String? description;
  final bool? isOffering;

 const  SectionTitle({
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
          Html(
            shrinkWrap: true,
            data: description,
          )
        ]);
  }
}
