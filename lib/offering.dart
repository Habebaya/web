import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/home/constant.dart';
import 'home/responsive.dart';
import 'home/section_title.dart';



class Offering extends StatelessWidget {
  const Offering({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: ConstantColor.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle(
                title: "Offering",
                description:
                "UX designed for matchmaking enterprise objectives to every human (customers, or staff) and implemented to a web platform responding in a blink of an eye.",
                buttonTitle: "Discover More"),
            const SizedBox(
              height: 30,
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: Responsive.isDesktop(context) ? 5 : 1,
                // Number of columns
                childAspectRatio: Responsive.isDesktop(context) ? 0.9 : 1,
                // Aspect ratio for each item
                crossAxisSpacing: 10.0,
                // Horizontal spacing
                mainAxisSpacing: 10.0, // Vertical spacing
              ),
              itemCount: 8,
              itemBuilder: (context, index) {
                return Container(
                  height: 300,
                  width: 300,
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
