import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/footer/footer_grid_view.dart';
import 'package:turn_digital_dashboard_test/footer/footer_td_logo.dart';
import 'package:turn_digital_dashboard_test/footer/get_it_touch.dart';
import 'package:turn_digital_dashboard_test/home/constant.dart';
import 'package:turn_digital_dashboard_test/home/responsive.dart';
import 'package:turn_digital_dashboard_test/models/foaterr_content_model.dart';
import 'package:turn_digital_dashboard_test/models/footer_model.dart';
import 'package:turn_digital_dashboard_test/models/get_in_touch_model.dart';

class Footer extends StatelessWidget {
  Footer({super.key});

  List<FooterModel> footerList = [
    FooterModel(title: "CraftShips", subTitles: [
      FooterContentModel(clickable: false, subTitle: "Services"),
      FooterContentModel(clickable: false, subTitle: "Offering"),
      FooterContentModel(clickable: false, subTitle: "Engagement")
    ]),
    FooterModel(title: "Pride", subTitles: [
      FooterContentModel(clickable: false, subTitle: "Clients"),
      FooterContentModel(clickable: false, subTitle: "Recognition"),
    ]),
    FooterModel(title: "DNA", subTitles: [
      FooterContentModel(clickable: false, subTitle: "Culture"),
      FooterContentModel(clickable: false, subTitle: "Behind The Action"),
      FooterContentModel(clickable: false, subTitle: "Family"),
    ]),
    FooterModel(title: "", subTitles: [
      FooterContentModel(clickable: true, subTitle: "Technology"),
      FooterContentModel(clickable: true, subTitle: "Careers")
    ]),

  ];

  GetInTouchModel getItTouch = GetInTouchModel(
      title: "Get in touch",
      socialMedia: ["Facebook", "Facebook"],
      buttonTitle: "Let's Talk",
      address: '19, Road 252, Degla, Maadi Cairo, Egypt');

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        color: ConstantColor.backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (!Responsive.isDesktop(context)) const FooterTdLogo(),
            const SizedBox(
              height: 25,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                  const Expanded(flex: 2, child: FooterTdLogo()),
                Expanded(
                    flex: 2,
                    child: FooterGridView(
                      footerGridInfo: footerList,
                      childAspectRatio: 1,
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 0,
                    )),
                if (Responsive.isDesktop(context))
                  Expanded(child: GetItTouch(getItTouch: getItTouch))
              ],
            ),
            if (!Responsive.isDesktop(context))
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: GetItTouch(getItTouch: getItTouch),
              ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              color: Colors.black45,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "Privacy Statement",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ));
  }
}
