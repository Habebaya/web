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
      FooterContentModel(clickable: true, subTitle: "Technology")
    ]),
    FooterModel(title: "DNA", subTitles: [
      FooterContentModel(clickable: false, subTitle: "Culture"),
      FooterContentModel(clickable: false, subTitle: "Behind The Action"),
      FooterContentModel(clickable: false, subTitle: "Family"),
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
        children: [
          if (!Responsive.isDesktop(context)) FooterTdLogo(),
          Row(
            children: [
              const Expanded(flex: 3, child: FooterTdLogo()),
              Expanded(
                  child: FooterGridView(
                footerGridInfo: footerList,
                childAspectRatio: 1,
                mainAxisSpacing: 0,
                crossAxisSpacing: 0,
              )),
              Expanded(child: GetItTouch(getItTouch: getItTouch))
            ],
          ),
        ],
      ),
    );
  }
}
