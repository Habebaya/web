import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OfferingTile extends StatelessWidget {
  const OfferingTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.ac_unit),
            const SizedBox(
              width: 15,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: const Text(
                'Web Technologies Platform Solutions',
                style: TextStyle(
                  color: Color(0xFF565656),
                  fontSize: 24,
                  fontFamily: 'Avenir LT Std',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
                maxLines: 2,
              ),
            )
          ],
        ),
        Positioned(
          top: 100,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0, left: 10),
            child: Row(
              children: [
                SvgPicture.asset("assets/icon/Line.svg"),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 10),
                      child: const Icon(Icons.ac_unit),
                    ),

                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(

                   child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: const Text(
                        'Web Technologies ',
                        style: TextStyle(
                          color: Color(0xFF565656),
                          fontSize: 24,
                          fontFamily: 'Avenir LT Std',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                        maxLines: 2,
                      ),
                    ),

                )
              ],
            ),),
        ),

      ],
    );
  }
}
