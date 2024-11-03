import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/home/responsive.dart';
import 'package:turn_digital_dashboard_test/home/section_title.dart';
import 'package:turn_digital_dashboard_test/shares/app_button.dart';

import 'color_constant.dart';

class ClientWidget extends StatelessWidget {
  ClientWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: ConstantColor.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SectionTitle(
              title: "Client",
              description:
                  "Proudly working with great\n people across the globe",
              includeButton: false,
              descriptionColor: Colors.black,
            ),
            const SizedBox(
              height: 30,
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: Responsive.isDesktop(context) ? 4 : 1,
                // Number of columns
                childAspectRatio: Responsive.isDesktop(context) ? 2 : 1,
                // Aspect ratio for each item
                crossAxisSpacing: 10.0,
                // Horizontal spacing
                mainAxisSpacing: 10.0, // Vertical spacing
              ),
              itemCount: 8,
              itemBuilder: (context, index) {
                return Image.asset("assets/aws.webp");
              },
            ),
            AppButton(
                width: 100,
                height: 30,
                buttonColor: Colors.transparent,
                hoverColor: ConstantColor.blackColor,
                hoverBorder: ConstantColor.blackColor,
                buttonTitle: "See More",
                buttonTitleFontSize: 13,
                hoverTitleTextColor: Colors.white,
                titleTextColor: ConstantColor.blackColor,
                onPressed: (){})
          ],
        ),
      ),
    );
  }
}
