import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';

class SecondRightWheel extends StatelessWidget {
  const SecondRightWheel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 354,
        height: 100,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          shadows: [
            const BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
          ],
        ),
        // padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset('assets/header_icon/second_right_icon.svg'),
                Text(
                  '70%',
                  style: TextStyle(
                    color: StaticColors.primaryColor,
                    fontSize: 18,
                    fontFamily: 'Avenir LT Std',
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.12,
              child: const Text(
                'Cost of Operations Reduction',
                maxLines: 2,
                style: TextStyle(
                  color: Colors.black,
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
