import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/responsive.dart';
import 'package:turn_digital_dashboard_test/shares/section_title.dart';
import 'package:turn_digital_dashboard_test/shares/app_button.dart';
import 'package:turn_digital_dashboard_test/technology/model/technology_model.dart';
import 'package:turn_digital_dashboard_test/technology/widget/smoke_video_background.dart';
import '../const/color_constant.dart';
import '../const/constants.dart';

class TechnologySection extends StatelessWidget {
  final TechnologyModel? technologyContent;

  const TechnologySection({super.key, required this.technologyContent});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: SmokeVideoBackground()),
        Container(
          width: MediaQuery.of(context).size.width,
          color: StaticColors.whiteColor.withOpacity(0.95),
          child: Padding(
            padding:  const EdgeInsets.symmetric(horizontal: Constants.paddingHorizontal  ,vertical: Constants.paddingVertical),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SectionTitle(
                  title: technologyContent!.title,
                  subTitle: technologyContent!.subtitle,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50.0),
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: Responsive.isDesktop(context) ? 5 : 2,
                      childAspectRatio: Responsive.isDesktop(context) ? 2 : 1,
                      crossAxisSpacing: 100.0,
                      mainAxisSpacing: 55.0, // Vertical spacing
                    ),
                    itemCount: technologyContent!.items!.length,
                    itemBuilder: (context, index) {
                      return Image.network(
                        technologyContent!.items![index].image!,
                        errorBuilder: (context, error, stackTrace) {
                          return Image.asset(
                            "assets/aws.webp", // Fallback image on error
                            width: 150,
                            height: 150,
                          );
                        },
                      );
                    },
                  ),
                ),
                AppButton(
                  width: MediaQuery.sizeOf(context).width * 0.22,
                  height: 52,
                  buttonTitle: 'See More',
                  buttonColor: StaticColors.primaryColor,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
