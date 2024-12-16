import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';

class FirstRightWheel extends StatelessWidget {
  const FirstRightWheel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 159,
      height: 149,
      decoration: ShapeDecoration(
        color: StaticColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '2M+',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontFamily: 'Avenir LT Std',
              fontWeight: FontWeight.w700,
              height: 1,
            ),
          ),
          Text(
            'API CALLS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Avenir LT Std',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
