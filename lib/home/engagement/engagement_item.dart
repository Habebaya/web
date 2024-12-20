import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:turn_digital_dashboard_test/const/color_constant.dart';

import 'engagement_model.dart';

class EngagementItem extends StatelessWidget {
  EngagementModel engagementModel;

  EngagementItem({super.key, required this.engagementModel});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 30),
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 57.60,
                height: 57.60,
                padding: const EdgeInsets.all(12),
                decoration: ShapeDecoration(
                  color: ConstantColor.primaryColor.withOpacity(0.2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(48),
                  ),
                ),
                child: SvgPicture.asset(engagementModel.icon),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                engagementModel.title,
                style: TextStyle(
                  color: ConstantColor.blackColor,
                  fontSize: 20,
                  // fontFamily: 'Avenir LT Std',
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
