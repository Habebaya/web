import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';

import '../../const/generic_asset_widget.dart';
import 'model/offering_item_model.dart';

class OfferingTile extends StatefulWidget {
  final OfferingItemModel offeringItem;

  const OfferingTile({super.key, required this.offeringItem});

  @override
  State<OfferingTile> createState() => _OfferingTileState();
}

class _OfferingTileState extends State<OfferingTile> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (_) {
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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: _isHovered
                        ? StaticColors.primaryColor.withOpacity(0.2)
                        : Colors.transparent),
                child:

          SvgPicture.network(
                  widget.offeringItem.icon!,
                  colorFilter: ColorFilter.mode(
                    _isHovered ? StaticColors.primaryColor : Color(0xFF828282),
                    // No filter on hover
                    BlendMode.srcIn,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  widget.offeringItem.title!,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: _isHovered
                        ? StaticColors.primaryColor
                        : StaticColors.subTitleGrayColor,
                    fontSize: 20,
                    fontFamily: 'Avenir LT Std',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
