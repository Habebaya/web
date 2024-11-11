import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  double width;
  double height;
  Color buttonColor;
  bool getInTouchButton;

  // Color hoverColor;
  // Color hoverBorder;
  String buttonTitle;

  Function onPressed;

  AppButton(
      {required this.width,
      required this.height,
      required this.buttonColor,
      this.getInTouchButton = false,
      // required this.hoverColor,
      // required this.hoverBorder,
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
            color: widget.buttonColor,
            // _isHovered ? widget.hoverColor : widget.buttonColor,
            // border: Border.all(color: widget.hoverBorder, width: 1.2)
          ),
          child: Center(
            child: Text(
              widget.buttonTitle,
              style: TextStyle(
                color: Colors.white,
                fontSize: widget.getInTouchButton ? 16 : 20,
                fontFamily: 'Avenir LT Std',
                fontWeight:
                    widget.getInTouchButton ? FontWeight.w600 : FontWeight.w700,
                height: widget.getInTouchButton ? 0.11 : 0.08,
              ),
              textAlign: TextAlign.center,
            ),
          )),
    );
  }
}
