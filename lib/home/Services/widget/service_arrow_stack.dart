import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';

class ServiceArrowStack extends StatelessWidget {
  const ServiceArrowStack({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height / 2.23,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: ConstantColor.arrowServiceTextColor,
            size: 22,
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: ConstantColor.arrowServiceTextColor,
            size: 22,
          ),
        ],
      ),
    );
  }
}
