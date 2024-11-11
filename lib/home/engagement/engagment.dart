import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/constants.dart';
import 'package:turn_digital_dashboard_test/shares/section_title.dart';
import 'package:turn_digital_dashboard_test/shares/app_button.dart';

import '../../const/color_constant.dart';
import 'engagement_item.dart';

class Engagement extends StatelessWidget {
  const Engagement({super.key});

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
                  title: "Engagement",
                  description:
                      'Project as a service (preferred), managed teams, or extended teams, are formulas that cover program management, analysis, tech delivery, ux design, software engineering, quality control & infrastructure.',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: Constants.engagement.map((item) {
                    return EngagementItem(engagementModel: item);
                  }).toList(),
                ),
                AppButton(
                  width: MediaQuery.sizeOf(context).width * 0.16,
                  height: 56,
                  buttonTitle: 'Engage',
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
