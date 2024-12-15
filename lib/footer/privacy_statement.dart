import 'package:flutter/material.dart';

import '../../const/color_constant.dart';

class PrivacyStatement extends StatelessWidget {
  const PrivacyStatement({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.sizeOf(context).height * 0.06,
      color: StaticColors.privacyStatementBackgroundColor,
      child: const Padding(
        padding:
        EdgeInsets.symmetric(horizontal: 120.0, vertical: 11),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '© All rights reserved to the TurnDigital 2024.',
              style: TextStyle(
                color: StaticColors.whiteColor,
                fontSize: 16,
                fontFamily: 'Segoe UI',
                fontWeight: FontWeight.w400,
                height: 0.11,
              ),
            ),
            Text(
              'Privacy Statement',
              style: TextStyle(
                color: StaticColors.whiteColor,
                fontSize: 16,
                fontFamily: 'Segoe UI',
                fontWeight: FontWeight.w600,
                height: 0.11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
