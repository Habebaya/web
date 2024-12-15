import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/constants.dart';
import 'package:turn_digital_dashboard_test/header/model/header_model.dart';
import 'package:turn_digital_dashboard_test/header/widget/rotating_wheel_header.dart';
import 'package:turn_digital_dashboard_test/header/widget/text_header.dart';

class Header extends StatelessWidget {
  final HeaderModel? headerModel;

  const Header({super.key, required this.headerModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Constants.paddingHorizontal,
        vertical: Constants.paddingVertical,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextHeader(headerData: headerModel!),
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Image.asset(
                    "assets/gif/header_waves.gif",
                    width: MediaQuery.sizeOf(context).width * 0.4,
                  ),
                ),
                Opacity(
                  opacity: 0.5,
                  child: Image.asset(
                    "assets/gif/td_logo.gif",
                    width: 78,
                    height: 84,
                  ),
                ),
                Image.asset(
                  "assets/background/header_back_orange.png",
                ),
                const RotatingWheelHeader()
              ],
            ),
          ),

          // SizedBox(
          //   child: Stack(
          //     alignment: Alignment.center,
          //     clipBehavior: Clip.none,
          //     fit: StackFit.loose,
          //     children: [
          //       Positioned(
          //         child: Image.asset(
          //           "assets/gif/header_back.gif",
          //           width: MediaQuery.sizeOf(context).width,
          //         ),
          //       ),
          //       Positioned(
          //         child: Image.asset(
          //           "assets/background/header_back_orange.png",
          //           width: MediaQuery.sizeOf(context).width,
          //         ),
          //       ),
          //       // Image.asset("assets/background/header_back_orange.png"),
          //       // const RotatingWheelHeader()
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
