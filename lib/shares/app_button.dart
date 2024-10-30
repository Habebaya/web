import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  double width;
  double height;
  Color buttonColor;
  Color hoverColor;
  Color hoverBorder;
  String buttonTitle;
  double buttonTitleFontSize;
  Color hoverTitleTextColor;
  Color titleTextColor;

  Function onPressed;

  AppButton(
      {required this.width,
      required this.height,
      required this.buttonColor,
      required this.hoverColor,
      required this.hoverBorder,
      required this.buttonTitle,
      required this.buttonTitleFontSize,
      required this.hoverTitleTextColor,
      required this.titleTextColor,
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
            color: _isHovered ? widget.hoverColor : widget.buttonColor,
            border: Border.all(color: widget.hoverBorder, width: 1.2)),
        alignment: Alignment.center,
        child: Text(
          widget.buttonTitle,
          style: TextStyle(
              color: _isHovered
                  ? widget.hoverTitleTextColor
                  : widget.titleTextColor,
              fontSize: widget.buttonTitleFontSize,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
