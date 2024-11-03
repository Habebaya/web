import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/home/color_constant.dart';

class FooterTdLogo extends StatelessWidget {
  const FooterTdLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.power_settings_new_rounded,
          color: ConstantColor.primaryColor,
          size: 40,
        ),
        SizedBox(height: 15,),
        Text(
          "TURN DIGITAL",
          style: TextStyle(
              fontSize: 24,
              color: ConstantColor.textColor,
              fontWeight: FontWeight.w700,height: 0.9),
        ),
        Text(
          "TAILORING DIGITAL",
          style: TextStyle(
              fontSize: 14,
              color: ConstantColor.textColor,
              fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
