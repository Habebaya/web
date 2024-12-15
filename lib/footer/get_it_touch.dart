import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/shares/app_button.dart';
import '../../const/color_constant.dart';
import 'models/get_in_touch_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GetItTouch extends StatelessWidget {
  final GetInTouchModel getItTouch;

  const GetItTouch({super.key, required this.getItTouch});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          getItTouch.title, // Dynamic text
          style: const TextStyle(
              fontFamily: 'Avenir LT Std',
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 20,
        ),
        SvgPicture.asset(
          "assets/icon/SocialMedia.svg",
          alignment: Alignment.center,
        ),
        // Row(
        //     children: getItTouch.socialMedia.map((item) {
        //   return const Icon(
        //     Icons.ac_unit_rounded,
        //     color: Colors.white,
        //   );
        // }).toList()),
        const SizedBox(
          height: 20,
        ),
        AppButton(
          getInTouchButton: true,
          width: 251,
          height: 52,
          buttonTitle: 'Let’s Talk',
          buttonColor: StaticColors.primaryColor,
          onPressed: () {},
        ),
      ],
    );
  }
}
