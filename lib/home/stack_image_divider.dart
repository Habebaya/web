import 'package:flutter/material.dart';
import 'package:blur/blur.dart';
import 'package:turn_digital_dashboard_test/home/responsive.dart';

class StackImageDivider extends StatelessWidget {
  String scrollDirection;
  String backGroundImage;
  Widget aboveWidget;
  double? mobileHeight;

  StackImageDivider(
      {super.key,
        this.mobileHeight,
      required this.scrollDirection,
      required this.backGroundImage,
      required this.aboveWidget});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.isDesktop(context)?1000: mobileHeight,
      width: double.infinity,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Blur(
            blur: 1.5,
            blurColor: Colors.black26,
            child: AnimatedPositioned(
              top: Responsive.isDesktop(context)
                  ? scrollDirection == "Down"
                      ? 300
                      : 400
                  : null,
              duration: const Duration(milliseconds: 800),
              // Change to 800 for a smoother effect
              curve: Curves.easeInOut,
              child: Image.asset(
                backGroundImage,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
            ),
          ),
          Positioned(
            right: 0,
              left: Responsive.isMobile(context)?0: 30,
              child: aboveWidget),
        ],
      ),
    );
  }
}
