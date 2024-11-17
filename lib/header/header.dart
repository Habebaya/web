import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';
import 'package:turn_digital_dashboard_test/header/header_video_embded.dart';
import 'package:turn_digital_dashboard_test/header/widget/header_image.dart';
import 'package:turn_digital_dashboard_test/header/widget/text_header.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Opacity(opacity: 0.48, child: HeaderVideoEmbed()),
            Opacity(
              opacity: 0.9,
              child: Container(color: ConstantColor.whiteColor),
            ),
            const Positioned(
              left: 60,
              right: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextHeader(
                      title: "TurnDigital",
                      subTitle: "TAILORING",
                      subTitle1: "WEB<br>TECHNOLOGIES",
                      description: "To achieve the enterprise objectives.Based on DXP,CMS,or Native,<br> custom solutions are crafted for extensibility, performance,security, and integrability with business applications.",
                    ),
                  ),
                  Expanded(child: HeaderImage()),
                ],
              ),
            )
          ],
        ));
  }
}
