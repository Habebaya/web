import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';

import '../const/font_style.dart';

class AppButton extends StatefulWidget {
  final double width;
  final double height;
  final Color buttonColor;
  final bool getInTouchButton;
  final bool contactUs;

  final String buttonTitle;

  final Function onPressed;

  const AppButton(
      {super.key,
      required this.width,
      required this.height,
      required this.buttonColor,
      this.getInTouchButton = false,
      this.contactUs = false,
      required this.buttonTitle,
      required this.onPressed});

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        widget.onPressed;
        setState(() {
          _isHovered = true; // Set hovered state to true
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false; // Set hovered state to true
        });
      },
      cursor: SystemMouseCursors.click, // Change the cursor on hover
      child: Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: _isHovered ? Colors.transparent : widget.buttonColor,
              border: Border.all(color: StaticColors.primaryColor, width: 1.2)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.buttonTitle,
                style: TextStyle(
                  fontSize: widget.getInTouchButton ? 16 : 20,
                  color: _isHovered ? widget.buttonColor : Colors.white,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Avenir LT Std',
                ),
                textAlign: TextAlign.center,
              ),
              if (!widget.contactUs) ...[
                const SizedBox(
                  width: 30,
                ),
                CircleAvatar(
                  radius: 12,
                  backgroundColor: _isHovered
                      ? StaticColors.primaryColor
                      : StaticColors.arrowIconColor,
                  child: Center(
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: _isHovered
                          ? StaticColors.arrowIconColor
                          : StaticColors.primaryColor,
                      size: 10,
                    ),
                  ),
                )
              ]
            ],
          )),
    );
  }
}
