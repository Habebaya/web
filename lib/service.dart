import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/home/section_title.dart';
import 'package:turn_digital_dashboard_test/home/color_constant.dart';
import 'package:turn_digital_dashboard_test/home/responsive.dart';

class OurService extends StatelessWidget {
  OurService({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: ConstantColor.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle(
                title: "Services",
                description:
                    "TurnDigital services cover all stages of the business life cycle mapped to the enterprise's challenges and needs.",
                buttonTitle: "Discover More"),
            const SizedBox(
              height: 30,
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: Responsive.isDesktop(context) ? 4 : 1,
                // Number of columns
                childAspectRatio: Responsive.isDesktop(context) ? 1 : 2,
                // Aspect ratio for each item
                crossAxisSpacing: 10.0,
                // Horizontal spacing
                mainAxisSpacing: 10.0, // Vertical spacing
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  height: 20,
                  width: 20,
                  color: Colors.deepOrangeAccent,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
