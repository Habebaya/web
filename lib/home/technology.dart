import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/responsive.dart';
import 'package:turn_digital_dashboard_test/shares/section_title.dart';
import 'package:turn_digital_dashboard_test/shares/app_button.dart';

import '../const/color_constant.dart';

class Technology extends StatelessWidget {
  Technology({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: ConstantColor.technologyBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 90,vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SectionTitle(
                title: "Technology",
                description: 'The best technology foundation and engines'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: Responsive.isDesktop(context) ? 5 : 2,
                  // Number of columns
                  childAspectRatio: Responsive.isDesktop(context) ? 2 : 1,
                  // Aspect ratio for each item
                  crossAxisSpacing: 100.0,
                  // Horizontal spacing
                  mainAxisSpacing: 55.0, // Vertical spacing
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Image.asset("assets/aws.webp");
                },
              ),
            ),
            AppButton(
              width: MediaQuery.sizeOf(context).width* 0.16 ,
              height: 56,
              buttonTitle: 'See More',
              buttonColor: ConstantColor.primaryColor,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
