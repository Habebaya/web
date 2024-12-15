import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';
import 'package:turn_digital_dashboard_test/const/responsive.dart';
import '../../model/boundary_model.dart';
import 'package:flutter_html/flutter_html.dart';

class BoundaryDescription extends StatelessWidget {
  final BoundaryModel boundaryModel;

  const BoundaryDescription({super.key, required this.boundaryModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: Responsive.isDesktop(context)
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Html(
          shrinkWrap: true,
          data: boundaryModel.title,
          style: {
            "p":Style(
              fontSize: FontSize(30),
              fontFamily: 'Avenir LT Std',
              textAlign: TextAlign.start,
              fontStyle: FontStyle.normal,
            ),

          },
        ),
        Html(
          shrinkWrap: true,
          data: boundaryModel.subtitle,
          style: {
            "span":Style(
              fontSize: FontSize(60),
              fontFamily: 'Avenir LT Std',
              textAlign: TextAlign.start,
              fontStyle: FontStyle.normal,
            ),
            "h1": Style(
              fontSize: FontSize(60),
              fontFamily: 'Avenir LT Std',
              textAlign: TextAlign.start,
              fontStyle: FontStyle.normal,
            ),

          },
        ),

        Html(
          data: boundaryModel.description,
          style: {
            "p": Style(
              fontSize: FontSize(24),
              fontFamily: 'Avenir LT Std',
              textAlign: TextAlign.start,
            ),
            "div": Style(
              fontSize: FontSize(24),
              fontFamily: 'Avenir LT Std',
              textAlign: TextAlign.start,
            ),
          },
        )
      ],
    );
  }
}
