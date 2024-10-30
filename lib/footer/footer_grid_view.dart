import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/footer/footer_tile.dart';
import 'package:turn_digital_dashboard_test/models/footer_model.dart';

import '../home/responsive.dart';

class FooterGridView extends StatelessWidget {
  List<FooterModel> footerGridInfo = [];

  double childAspectRatio;
  double crossAxisSpacing;
  double mainAxisSpacing;

  FooterGridView(
      {super.key,
      required this.footerGridInfo,
      required this.childAspectRatio,
      required this.crossAxisSpacing,
      required this.mainAxisSpacing});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true, // Allow GridView to size itself
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Responsive.isDesktop(context) ? 3 : 2,
        // 4 items per row
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: crossAxisSpacing,
        // Optional: spacing between items
        mainAxisSpacing: mainAxisSpacing, // Optional: spacing between rows
      ),
      itemCount: footerGridInfo.length, // Total number of items
      itemBuilder: (context, index) {
        return FooterTile(footerGridInfo: footerGridInfo[index]);
      },
    );
  }
}
