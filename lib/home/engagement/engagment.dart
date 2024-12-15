import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/constants.dart';
import 'package:turn_digital_dashboard_test/home/engagement/models/engagement_model.dart';
import 'package:turn_digital_dashboard_test/shares/section_title.dart';
import 'package:turn_digital_dashboard_test/shares/app_button.dart';

import '../../const/color_constant.dart';
import '../models/home_model.dart';
import 'engagement_item.dart';

class Engagement extends StatelessWidget {
  final EngagementModel? engagementContent;

  // final bool useDummy;

  const Engagement({
    super.key,
    required this.engagementContent,
  });

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
                    title: engagementContent!.title!,
                    subTitle: engagementContent!.subtitle!),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: engagementContent!.engagements!.map((item) {
                    return EngagementItem(engagementItem: item);
                  }).toList(),
                ),
                AppButton(
                  width:322,
                  height: 52,
                  buttonTitle: engagementContent!.buttonText!,
                  buttonColor: StaticColors.primaryColor,
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
