import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'color_constant.dart';

class GenericAssetWidget extends StatelessWidget {
  final String assetPath;
  final double? width;
  final double? height;
  final bool? isHovered;
  final Color? offeringOriginalColor;

  const GenericAssetWidget(
      {super.key,
      required this.assetPath,
      this.width,
      this.height,
      this.offeringOriginalColor,
      this.isHovered});

  @override
  Widget build(BuildContext context) {
    bool isSvg = assetPath.toLowerCase().endsWith('.svg');

    return isSvg
        ? SvgPicture.network(
            assetPath,
            width: width,
            height: height,
            fit: BoxFit.contain,
            colorFilter: ColorFilter.mode(
              StaticColors.primaryColor,
              BlendMode.srcIn,
            ), // You can adjust BoxFit as needed
          )
        : Image.network(
            assetPath,
            width: width,
            height: height,
            fit: BoxFit.contain, // Adjust BoxFit as needed
          );
  }
}
