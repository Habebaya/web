import 'package:flutter/material.dart';

import '../../../const/color_constant.dart';

class ServiceNumberStack extends StatelessWidget {
  final int index;

  const ServiceNumberStack({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 0,
        bottom: 0,
        child: Text(
          (index + 1).toString(),
          style: const TextStyle(
            color: ConstantColor.indexServiceTextColor,
            fontSize: 128,
            fontFamily: 'Avenir LT Std',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ));
  }
}
