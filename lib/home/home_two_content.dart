import 'package:flutter/material.dart';
import 'package:blur/blur.dart';
import 'package:turn_digital_dashboard_test/home/color_constant.dart';
import 'package:turn_digital_dashboard_test/home/responsive.dart';

class HomeContentWithImage extends StatelessWidget {
  final String scrollDirection;
  final String backgroundImage;
  final Widget topWidget;
  final Widget bottomWidget;

  const HomeContentWithImage({
    super.key,
    required this.scrollDirection,
    required this.backgroundImage,
    required this.topWidget,
    required this.bottomWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ConstantColor.backgroundColor,
      height: Responsive.isDesktop(context) ? 1800 : 2000,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Stack(
            alignment: AlignmentDirectional.centerStart,
            children: [
              Blur(
                blur: 1.5,
                blurColor: Colors.black26,
                child: AnimatedPositioned(
                  top: scrollDirection == "Down" ? 250 : 0,
                  bottom: scrollDirection == "Up" ? 250 : 0,
                  duration: const Duration(milliseconds: 800),
                  // Change to 800 for a smoother effect
                  curve: Curves.easeInOut,
                  child: Image.asset(
                    backgroundImage,
                    fit: BoxFit.contain,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height * 0.92,
                  left: 30,
                  child: const Text("mklk")),
            ],
          ),
          Positioned(top: 0, child: topWidget),
          Positioned(bottom: 0, child: bottomWidget)
        ],
      ),
    );
  }
}
