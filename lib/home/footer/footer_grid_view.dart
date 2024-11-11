import 'package:flutter/material.dart';
import '../../const/responsive.dart';
import 'footer_tile.dart';
import 'models/footer_model.dart';

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
    return Center(
      child: GridView.builder(
        clipBehavior: Clip.none,
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
      ),
    );
  }
}
