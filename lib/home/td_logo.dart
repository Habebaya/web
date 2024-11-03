import 'package:flutter/material.dart';
import 'color_constant.dart';

class TdLogo extends StatelessWidget {

  const TdLogo({super.key});


  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.power_settings_new,
          color: ConstantColor.primaryColor,
          size: 25,
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "TURN DIGITAL",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black,
                fontSize: 22,
              ),
            ),
            Text(
              "TAILORING DIGITAL",
              style: TextStyle(
                height: 0.3,
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ],
        )
      ],
    );
  }
}
