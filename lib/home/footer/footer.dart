import 'package:flutter/material.dart';

import 'package:turn_digital_dashboard_test/const/color_constant.dart';
import 'package:turn_digital_dashboard_test/const/constants.dart';
import 'package:turn_digital_dashboard_test/const/responsive.dart';
import 'package:turn_digital_dashboard_test/home/footer/footer_grid_view.dart';
import 'package:turn_digital_dashboard_test/home/footer/footer_td_logo.dart';
import 'package:turn_digital_dashboard_test/home/footer/privacy_statement.dart';

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
        color: ConstantColor.blackColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (Responsive.isDesktop(context))
                  const Expanded(flex: 1, child: FooterTdLogo()),
                Expanded(
                    flex: 2,
                    child: Center(
                      child: FooterGridView(
                        footerGridInfo: Constants.footer,
                        childAspectRatio: 1.2,
                        mainAxisSpacing: 0,
                        crossAxisSpacing: 0,
                      ),
                    )),
                Expanded(child: GetItTouch(getItTouch: getItTouch)),
              ],
            ),
            PrivacyStatement()
          ],
        ));
  }
}
