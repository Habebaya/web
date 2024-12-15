import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/responsive.dart';
import '../../../../const/constants.dart';
import '../../../models/home_model.dart';
import '../../model/boundary_model.dart';
import '../widget/boundary_description.dart';

class BoundarySection extends StatelessWidget {
  final BoundaryModel? boundaryContent;

  const BoundarySection({super.key, required this.boundaryContent});

  @override
  Widget build(BuildContext context) {
    // if (Responsive.isDesktop(context)) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: Constants.paddingHorizontal  ,vertical: Constants.paddingVertical),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: BoundaryDescription(
              boundaryModel: BoundaryModel(
                title: boundaryContent!.title,
                subtitle: boundaryContent!.subtitle,
                description: boundaryContent!.description,
              ),
            ),
          ),

          Expanded(
              child: Image.network(
            boundaryContent!.image!,
            errorBuilder: (context, error, stackTrace) {
              return Image.asset(
                "assets/map.webp", // Fallback image on error

              );
            },
          ))
        ],
      ),
    );
    // } else {
    //   return Padding(
    //     padding: const EdgeInsets.symmetric(vertical: 25.0),
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         BoundaryDescription(
    //           boundaryModel: BoundaryModel(
    //             title: "NO BORDER",
    //             subTitle: "NO Boundaries",
    //             description: "Offering a Worldwide Collaborative Result",
    //             longDescription:
    //                 "In a Digital world with no borders or boundaries, no one\n"
    //                 "is a know-it-all, extending our minds and reach through\n"
    //                 "talents worldwide. With a network spreading from the\n"
    //                 "Arabian Gulf to North America, we select and utilize the\n"
    //                 "best-of-the-breed technology, tactics, and human assets.",
    //           ),
    //         ),
    //         Image.asset("assets/map.webp")
    //       ],
    //     ),
    //   );
    // }
  }
}
