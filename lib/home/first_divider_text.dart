import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';
import 'package:turn_digital_dashboard_test/const/responsive.dart';

class FirstDividerText extends StatelessWidget {
  const FirstDividerText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: Responsive.isMobile(context)
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: const [
          Text(
            "Developing For a\n Purpose",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: StaticColors.appTheme_55B,
              fontSize: 40,
            ),
            maxLines: 2,
            softWrap: true,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "TurnDigital is aspiring for,\n"
            " always, a better, \"human 2\n, human!\" experience.\n"
            "Connecting us all, individuals\n and organizations, through\n digital interfaces.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w400,
            ),
            maxLines: 7,
            softWrap: true,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
