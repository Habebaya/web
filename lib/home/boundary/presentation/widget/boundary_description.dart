import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';
import 'package:turn_digital_dashboard_test/const/responsive.dart';
import '../../model/boundary_model.dart';

class BoundaryDescription extends StatelessWidget {
  BoundaryModel boundaryModel;

  BoundaryDescription({super.key, required this.boundaryModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: Responsive.isDesktop(context)
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        Text(
          boundaryModel.title,
          style: const TextStyle(
            color: ConstantColor.subTitleBlackShades,
            fontSize: 20,
            fontFamily: 'Avenir LT Std',
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          boundaryModel.subTitle,
          style: const TextStyle(
              fontSize: 60,
              color: ConstantColor.primaryColor,
              fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 24,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: boundaryModel.description,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Avenir LT Std',
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: boundaryModel.longDescription,
                style: const TextStyle(
                  color: Color(0xFF565656),
                  fontSize: 20,
                  fontFamily: 'Avenir LT Std',
                  fontWeight: FontWeight.w300,
                  height: 0,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
