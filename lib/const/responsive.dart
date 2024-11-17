// ignore_for_file: file_names

import 'package:flutter/widgets.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) => MediaQuery.sizeOf(context).width >= 375;

  static bool isTablet(BuildContext context) =>
      MediaQuery.sizeOf(context).width <= 768 && MediaQuery.sizeOf(context).width > 375;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.sizeOf(context).width <= 1920 &&  MediaQuery.sizeOf(context).width > 768 ;


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    if (size.width >= 1920) {
      return desktop;
    } else if (size.width <= 768 ) {
      // Return tablet only if it is not null
      return tablet ?? mobile; // If tablet is null, fallback to mobile
    } else {
      return mobile;
    }
  }
}
