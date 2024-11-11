import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';
import 'package:turn_digital_dashboard_test/const/responsive.dart';
import 'package:turn_digital_dashboard_test/header_video_embded.dart';
import 'package:turn_digital_dashboard_test/home/td_logo.dart';

class Header extends StatefulWidget {
  Header({
    Key? key,
  }) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool isHovered = false;
  int? hoveredIndex;

  int? currentIndex = 0;

  @override
  Widget build(BuildContext context) {

      return SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height * 0.7,

          child: Stack(
            children: [
              Opacity(opacity: 0.48,

                  child: HeaderVideoEmbed()),
              Opacity(
                opacity: 0.87,
                child: Container(
                  color: ConstantColor.whiteColor
                ),
              ),


            ],
          ));

  }
}
