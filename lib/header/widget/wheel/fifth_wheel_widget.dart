import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';

class FifthRightWheel extends StatelessWidget {
  const FifthRightWheel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
        height: 80,
        decoration: ShapeDecoration(
          color: StaticColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Image.asset(
                    'assets/header_icon/Group13.png',)),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.11,
              child: const Text(
                'Increase in Efficiency',
                maxLines: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Avenir LT Std',
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ));
  }
}



