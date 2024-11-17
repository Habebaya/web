import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/constants.dart';
import 'package:turn_digital_dashboard_test/shares/section_title.dart';
import 'package:turn_digital_dashboard_test/shares/app_button.dart';

import '../../const/color_constant.dart';
import '../models/home_model.dart';
import 'engagement_item.dart';

class Engagement extends StatelessWidget {
  final HomeModel? engagementContent;
  final bool useDummy;

  const Engagement(
      {super.key, required this.engagementContent, this.useDummy = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        alignment: AlignmentDirectional.center,
        clipBehavior: Clip.antiAlias,
        children: [
          Image.asset("assets/background/engagement.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                SectionTitle(
                    title: engagementContent!.engagementModel!.title!,
                    description: engagementContent!.engagementModel!.subtitle!),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: engagementContent!.engagementModel!.engagements!
                      .map((item) {
                    return EngagementItem(engagementItem: item);
                  }).toList(),
                ),
                AppButton(
                  width: MediaQuery.sizeOf(context).width * 0.2,
                  height: 56,
                  buttonTitle:
                      engagementContent!.engagementModel!.buttonText!,
                  buttonColor: ConstantColor.primaryColor,
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
