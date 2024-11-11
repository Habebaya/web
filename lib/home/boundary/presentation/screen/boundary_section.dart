import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/responsive.dart';
import '../../model/boundary_model.dart';
import '../widget/boundary_description.dart';

class BoundarySection extends StatelessWidget {
  BoundarySection({super.key});

  @override
  Widget build(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 80),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: BoundaryDescription(
                boundaryModel: BoundaryModel(
                  title: "NO BORDER",
                  subTitle: "NO Boundaries",
                  description: 'Offering a Worldwide Collaborative Result.\n',
                  longDescription:
                      '\nIn a Digital world with no borders or boundaries, no one is a know-it-all, extending our minds and reach through talents worldwide. With a network spreading from the Arabian Gulf to North America, we select and utilize the best-of-the-breed technology, tactics, and human assets.',
                ),
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Expanded(child: Image.asset("assets/map.webp"))
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BoundaryDescription(
              boundaryModel: BoundaryModel(
                title: "NO BORDER",
                subTitle: "NO Boundaries",
                description: "Offering a Worldwide Collaborative Result",
                longDescription:
                    "In a Digital world with no borders or boundaries, no one\n"
                    "is a know-it-all, extending our minds and reach through\n"
                    "talents worldwide. With a network spreading from the\n"
                    "Arabian Gulf to North America, we select and utilize the\n"
                    "best-of-the-breed technology, tactics, and human assets.",
              ),
            ),
            Image.asset("assets/map.webp")
          ],
        ),
      );
    }
  }
}
