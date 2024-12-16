import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopWheelWidget extends StatelessWidget {
  const TopWheelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.16,
      height: 202,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset('assets/header_icon/top_wheel_icon.svg'),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.12,
              child: const Text("20+ Entities achieved their digital presence",
                  maxLines: 3,
                  style: TextStyle(
                    fontFamily: 'Avenir LT Std',
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
