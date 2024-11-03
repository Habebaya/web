import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/boundary/model/boundary_model.dart';
import 'package:turn_digital_dashboard_test/home/color_constant.dart';
import 'package:turn_digital_dashboard_test/home/responsive.dart';

class BoundaryDescription extends StatelessWidget {
  BoundaryModel boundaryModel;

   BoundaryDescription({super.key,required this.boundaryModel});

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
              fontSize: 24,
              height: 1.2,
              color: ConstantColor.primaryColor,
              fontWeight: FontWeight.w400),
        ),
         Text(
         boundaryModel.subTitle,
          style: const TextStyle(
              fontSize: 28,
              height: 2.2,
              color: ConstantColor.blackColor,
              fontWeight: FontWeight.w400),
        ),
        const SizedBox(height: 15,),

        SizedBox(
          width: Responsive.isDesktop(context)
              ? null
              : MediaQuery.of(context).size.width / 2,
          child: Text(
            boundaryModel.description,
            style:  const TextStyle(
                height: 1.3,
                fontSize: 18,
                color: ConstantColor.blackColor,
                fontWeight: FontWeight.w700),
            maxLines: 2,
            textAlign: Responsive.isDesktop(context)
                ? TextAlign.start
                : TextAlign.center,
          ),
        ),
        const SizedBox(height: 15,),
         Text(
         boundaryModel.longDescription,
          maxLines: 6,
          style: const TextStyle(
              height: 1.5,
              fontSize: 18,
              color: ConstantColor.blackColor,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
