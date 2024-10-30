import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/home/constant.dart';
import 'package:turn_digital_dashboard_test/home/responsive.dart';
import 'package:turn_digital_dashboard_test/home/section_title.dart';
import 'package:turn_digital_dashboard_test/shares/app_button.dart';

class SecondDividerDescription extends StatelessWidget {
  const SecondDividerDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Engagement",
          description: "PROJECT AS A SERVICE \n"
              "(preferred), MANAGED\n"
              "TEAMS, or EXTENDED TEAMS,"
              "\nare formulas that cover nProgram"
              "\n Management,Analysis, Tech Delivery, "
              "\nUX Design, Software Engineering"
              "\n, Quality Control & Infrastructure.",
          includeButton: false,
          descriptionColor: Colors.white,
        ),
        const SizedBox(
          height: 15,
        ),
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: Responsive.isDesktop(context) ? 3 : 1,
            // Number of columns
            childAspectRatio: Responsive.isDesktop(context) ? 0.9 : 5,
            // Aspect ratio for each item
            crossAxisSpacing: 10.0,
            // Horizontal spacing
            mainAxisSpacing: 10.0, // Vertical spacing
          ),
          itemCount: 3,
          itemBuilder: (context, index) {
            return const Column(
              children: [
                Icon(
                  Icons.output_sharp,
                  color: ConstantColor.primaryColor,
                  size: 45,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Project as a service (Preferred)",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            );
          },
        ),
        AppButton(
            width: 140,
            height: 42,
            buttonColor: ConstantColor.primaryColor,
            hoverColor: Colors.white,
            hoverBorder: ConstantColor.primaryColor,
            buttonTitle: "Engage",
            buttonTitleFontSize: 21,
            hoverTitleTextColor: ConstantColor.blackColor,
            titleTextColor: Colors.white,
            onPressed: (){})
      ],
    );
  }
}
