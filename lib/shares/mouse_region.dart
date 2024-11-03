import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MouseRegionWidget extends StatefulWidget {
  final Widget child;
  final Function onPressed;
  bool isHovered;

  MouseRegionWidget(
      {super.key,
      required this.child,

      required this.onPressed,
      required this.isHovered,});

  @override
  State<MouseRegionWidget> createState() => _MouseRegionWidgetState();
}

class _MouseRegionWidgetState extends State<MouseRegionWidget> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (_) {
          widget.onPressed;
          setState(() {
            widget.isHovered = true; // Set hovered state to true
          });
        },
        onExit: (_) {
          setState(() {
            widget.isHovered = false; // Set hovered state to true
          });
        },
        cursor: SystemMouseCursors.click, // Change the cursor on hover
        child: widget.child);
  }
}
