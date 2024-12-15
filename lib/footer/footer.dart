import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';
import 'package:turn_digital_dashboard_test/const/constants.dart';

import 'footer_grid_view.dart';
import 'get_it_touch.dart';
import 'models/get_in_touch_model.dart';

class Footer extends StatelessWidget {
  Footer({super.key});

  GetInTouchModel getItTouch = GetInTouchModel(
      title: "Get in touch",
      socialMedia: ["Facebook", "Facebook"],
      buttonTitle: "Let's Talk",
      address: '19, Road 252, Degla, Maadi Cairo, Egypt');

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.sizeOf(context).height * 0.4,
        width: MediaQuery.sizeOf(context).width,
        color: StaticColors.blackColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SvgPicture.asset(
                "assets/icon/footer_logo.svg",
                alignment: Alignment.center,
              ),
            ),
            Expanded(
                flex: 2,
                child: FooterGridView(
                  footerGridInfo: Constants.footer,
                  childAspectRatio: 1.2,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                )),
            Expanded(child: GetItTouch(getItTouch: getItTouch)),
          ],
        ));
  }
}
