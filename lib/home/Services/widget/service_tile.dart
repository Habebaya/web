import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

      child: Container(
        margin: const EdgeInsets.only(right: 12),
        width: MediaQuery.sizeOf(context).width * 0.23,
        height: MediaQuery.sizeOf(context).height * 0.431,
        clipBehavior: Clip.hardEdge,
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
        decoration: BoxDecoration(
          border: Border.all(color: ConstantColor.borderColor, width: 1),
          shape: BoxShape.circle,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                    radius: 30,
                    backgroundColor: isHovered
                        ? ConstantColor.primaryColor
                        : ConstantColor.primaryColor.withOpacity(0.2),
                    child: SvgPicture.network(
                      widget.serviceItem.serviceImg!,
                      alignment: Alignment.center,
                      colorFilter: ColorFilter.mode(
                        isHovered
                            ? ConstantColor.whiteColor
                            : ConstantColor.primaryColor,
                        BlendMode.srcIn,
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    width: 33,
                    padding: const EdgeInsets.all(1.5),
                    color: ConstantColor.primaryColor),
              ],
            ),
            Text(
              widget.serviceItem.serviceTitle!,
              textAlign: TextAlign.center,
              style:  TextStyle(
                color: isHovered
                    ? ConstantColor.primaryColor
                    : ConstantColor.blackColor,
                fontSize: 30,
                fontFamily: 'Avenir LT Std',
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              widget.serviceItem.serviceDesc!,
              maxLines: 4,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: ConstantColor.subTitleGrayColor,
                  fontSize: 16,
                  fontFamily: 'Avenir LT Std',
                  fontWeight: FontWeight.w300,
                  height: 1.5),
            ),
            Container(
              height: 31,
              width: 31,
              decoration: const BoxDecoration(
                color: ConstantColor.primaryColor,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_forward_ios,
                color: ConstantColor.arrowIconColor,
                size: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}
