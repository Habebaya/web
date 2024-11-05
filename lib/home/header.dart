import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/home/color_constant.dart';
import 'package:turn_digital_dashboard_test/home/responsive.dart';
import 'package:turn_digital_dashboard_test/home/td_logo.dart';

class Header extends StatefulWidget {
  Header({
    Key? key,
  }) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool isHovered = false;
  int? hoveredIndex;

  int? currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    if (!Responsive.isDesktop(context)) {
      return Container(
        color: ConstantColor.backgroundColor,
        height: 70,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TdLogo(),
              IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: ConstantColor.primaryColor,
                  ),
                  onPressed: () {}

                  // onPressed:
                  ),
            ],
          ),
        ),
      );
    } else {
      return Container(
        width: 1925,
        height: 1015,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Opacity(
                opacity: 0.15,
                child: Container(width: 1920, height: 1015),
              ),
            ),
            Positioned(
              left: 2,
              top: 0,
              child: Opacity(
                opacity: 0.44,
                child: Container(
                  width: 1923,
                  height: 1015,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
            ),
            Positioned(
              left: 1060,
              top: 221,
              child: Opacity(
                opacity: 0.15,
                child: Container(
                  width: 651,
                  height: 639,
                  decoration: BoxDecoration(color: Color(0xFFF27922)),
                ),
              ),
            ),
          ],
        ),
      );


    }
  }
}
