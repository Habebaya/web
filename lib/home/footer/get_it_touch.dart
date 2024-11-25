import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/shares/app_button.dart';
import '../../const/color_constant.dart';
import 'models/get_in_touch_model.dart';

class GetItTouch extends StatelessWidget {
  final GetInTouchModel getItTouch;

  const GetItTouch({super.key, required this.getItTouch});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          getItTouch.title, // Dynamic text
          style: const TextStyle(
              fontSize: 24, color: Colors.white, fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
            children: getItTouch.socialMedia.map((item) {
          return const Icon(
            Icons.ac_unit_rounded,
            color: Colors.white,
          );
        }).toList()),
        const SizedBox(
          height: 20,
        ),
        // AddressTile(address: getItTouch.address),
        // const SizedBox(
        //   height: 20,
        // ),
        AppButton(
          getInTouchButton: true,
          width: MediaQuery.sizeOf(context).width* 0.16,
          height: 40,
          buttonTitle: 'Let’s Talk',
          buttonColor: StaticColors.appTheme_55B,
          onPressed: () {},
        ),
      ],
    );
  }
}
