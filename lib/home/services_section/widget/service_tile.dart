import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../const/generic_asset_widget.dart';
import '../model/service_item_model.dart';

class ServiceTile extends StatefulWidget {
  final ServiceItemModel serviceItem;

  const ServiceTile({super.key, required this.serviceItem});

  @override
  State<ServiceTile> createState() => _ServiceTileState();
}

class _ServiceTileState extends State<ServiceTile> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        print(
            "   width: ${MediaQuery.sizeOf(context).width * 0.23}     // height: ${MediaQuery.sizeOf(context).height * 0.431}");
        setState(() {
          isHovered = true; // Set hovered state to true
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false; // Set hovered state to true
        });
      },
      cursor: SystemMouseCursors.click, // Change the cursor on hover

      child: AnimatedContainer(
        duration: const Duration(seconds: 2),
        // Animation duration for border color change
        curve: Curves.easeInOut,
        // Smooth easing curve for the animation
        margin: const EdgeInsetsDirectional.only(end: 10),
        width: MediaQuery.sizeOf(context).width * 0.23,
        height: MediaQuery.sizeOf(context).height * 0.431,
        clipBehavior: Clip.hardEdge,
        padding: const EdgeInsets.all(30),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: StaticColors.borderColor),
            borderRadius: BorderRadius.circular(283),
          ),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
                radius: 32,
                backgroundColor: isHovered
                    ? StaticColors.primaryColor
                    : StaticColors.lightPrimaryColor.withOpacity(0.5),
                child:

                SvgPicture.network(
                  widget.serviceItem.image!,
                  height: 35,
                  width: 35,
                  alignment: Alignment.center,
                  colorFilter: ColorFilter.mode(
                    isHovered
                        ? StaticColors.whiteColor
                        : StaticColors.primaryColor,
                    BlendMode.srcIn,
                  ),
                )
                ),
            Container(
                width: 33,
                padding: const EdgeInsets.all(1.5),
                color: StaticColors.primaryColor),
            Text(
              widget.serviceItem.title!,
              textAlign: TextAlign.center,
              softWrap: true,
              style: TextStyle(
                color: isHovered
                    ? StaticColors.primaryColor
                    : StaticColors.blackColor,
                fontSize: 32.0,
                fontFamily: 'Avenir LT Std',
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              widget.serviceItem.description!,
              maxLines: 4,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: StaticColors.subTitleGrayColor,
                  fontSize: 16.0,
                  fontFamily: 'Avenir LT Std',
                  fontWeight: FontWeight.w300,
                  height: 1.5),
            ),
            Container(
              height: 31,
              width: 31,
              decoration: const BoxDecoration(
                color: StaticColors.primaryColor,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_forward_ios,
                color: StaticColors.arrowIconColor,
                size: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CircleBorderPainter extends CustomPainter {
  final bool isHovered;

  CircleBorderPainter({required this.isHovered});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10; // Width of the border

    // If hovered, change one half to red and the other half to grey
    if (isHovered) {
      paint.color = Colors.red;
      canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2),
            radius: size.width / 2),
        -3.14 / 2, // Start angle for half the circle (left half)
        3.14, // Sweep angle for half the circle
        false,
        paint,
      );
    } else {
      // If not hovered, draw the second half red, first half grey
      paint.color = Colors.grey;
      canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2),
            radius: size.width / 2),
        -3.14 / 2, // Start angle for the first half
        3.14, // Sweep angle for half the circle (left half)
        false,
        paint,
      );

      paint.color = Colors.red;
      canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2),
            radius: size.width / 2),
        0, // Start angle for the second half (right half)
        3.14, // Sweep angle for the right half
        false,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true; // Repaint whenever isHovered changes
  }
}
