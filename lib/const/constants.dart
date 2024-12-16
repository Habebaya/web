import 'package:flutter/cupertino.dart';
import 'package:turn_digital_dashboard_test/header/widget/wheel/fifth_wheel_widget.dart';
import 'package:turn_digital_dashboard_test/header/widget/wheel/first_right_wheel_widget.dart';
import 'package:turn_digital_dashboard_test/header/widget/wheel/second_right_wheel_widget.dart';
import 'package:turn_digital_dashboard_test/header/widget/wheel/top_wheel_widget.dart';

import 'package:turn_digital_dashboard_test/home/engagement/models/engagement_item_model.dart';
import 'package:turn_digital_dashboard_test/home/offering/model/offering_item_model.dart';

import '../footer/models/foaterr_content_model.dart';
import '../footer/models/footer_model.dart';
import '../home/engagement/models/engagement_model.dart';
import '../home/models/home_model.dart';
import '../home/offering/model/offering_model.dart';
import '../home/services_section/model/service_item_model.dart';
import '../home/services_section/model/service_model.dart';

class Constants {
  static const baseUrl = 'http://api.td-dev.turndigital.net:7070/api/public/';
  static const getHomeContent = "home/getHomePageContent";

  static const paddingHorizontal = 60.0;
  static const paddingVertical = 50.0;
  static const spaceBetweenSections = SizedBox(height: 25.0);

  static List<Widget> headerRoundedImageUrls = [
    TopWheelWidget(),
    // Image.asset(
    //   "assets/one.png",
    //   width: 230,
    //   height: 180,
    // ),
    // Image.asset(
    //   "assets/two.png",
    //   width: 159,
    //   height: 149,
    // ),
    FirstRightWheel(),
    SecondRightWheel(),
    //  Image.asset(
    //   "assets/three.png",
    //   width: 300,
    //   height: 100,
    // ),
     Image.asset(
      "assets/four.png",
       width: 230,
       height: 230,
    ),
    FifthRightWheel(),
    //  Image.asset(
    //   "assets/five.png",
    //   width: 300,
    //   height: 300,
    // ),

     Image.asset(
      "assets/six.png",
     width: 317,
     height: 100,
    ),

  ];

  static List<FooterModel> footer = [
    FooterModel(title: "Home", isMainTitle: true, subTitles: [
      FooterContentModel(isMainTitle: false, subTitle: "Services"),
      FooterContentModel(isMainTitle: false, subTitle: "Offering"),
      FooterContentModel(isMainTitle: false, subTitle: "Engagement")
    ]),
    FooterModel(title: "Pride", isMainTitle: true, subTitles: [
      FooterContentModel(isMainTitle: false, subTitle: "Clients"),
      FooterContentModel(isMainTitle: false, subTitle: "Recognition"),
      FooterContentModel(isMainTitle: true, subTitle: "Technology"),
    ]),
    FooterModel(title: "DNA", isMainTitle: true, subTitles: [
      FooterContentModel(isMainTitle: false, subTitle: "Culture"),
      FooterContentModel(isMainTitle: false, subTitle: "Behind The Action"),
      FooterContentModel(isMainTitle: false, subTitle: "Family"),
      FooterContentModel(isMainTitle: true, subTitle: "Careers")
    ]),
  ];

  static List<FooterModel> header = [
    FooterModel(title: "Home", isMainTitle: true, subTitles: [
      FooterContentModel(isMainTitle: false, subTitle: "Services"),
      FooterContentModel(isMainTitle: false, subTitle: "Offering"),
      FooterContentModel(isMainTitle: false, subTitle: "Engagement")
    ]),
    FooterModel(title: "Pride", isMainTitle: true, subTitles: [
      FooterContentModel(isMainTitle: false, subTitle: "Clients"),
      FooterContentModel(isMainTitle: false, subTitle: "Recognition"),
    ]),
    FooterModel(title: "DNA", isMainTitle: true, subTitles: [
      FooterContentModel(isMainTitle: false, subTitle: "Culture"),
      FooterContentModel(isMainTitle: false, subTitle: "Behind The Action"),
      FooterContentModel(isMainTitle: false, subTitle: "Family"),
      FooterContentModel(isMainTitle: true, subTitle: "Careers")
    ]),
    FooterModel(title: "Technology", isMainTitle: true, subTitles: []),
    FooterModel(title: "Careers", isMainTitle: true, subTitles: []),
  ];

  static List<EngagementItemModel> engagement = [
    EngagementItemModel(
        title: "Project as a service\n(Preferred)",
        image: "assets/icon/preferred.svg",
        subtitle: ""),
    EngagementItemModel(
        title: "Managed Teams\n", image: "assets/icon/managed_teams.svg"),
    EngagementItemModel(
        title: "Extend Teams\n", image: "assets/icon/extend_teams.svg"),
  ];

  static List<String> offering = [
    "Digital Objectives Solution",
    'Web Technologies Platform Solutions',
    'Business Process Automation Solution',
    'Continuous Improvement Solutions',
    'User Experience Solutions',
    'Integration Solutions',
    'Environment Management and Support Solutions',
  ];

  static HomeModel defaultHomeData = HomeModel(
      serviceModel: dummyServiceData,
      offeringModel: dummyOfferingData,
      engagementModel: dummyEngagementData);

  static ServiceSectionModel dummyServiceData = ServiceSectionModel(
      title: "Services",
      subtitle:
          "TurnDigital services cover all stages of the business life cycle mapped to the enterprise's challenges and needs.",
      buttonText: "Discover",
      services: [
        ServiceItemModel(
            title: "Define",
            description:
                "TurnDigital Plan & Design the best-fit actions to meet the business challenge",
            image: "assets/icon/define.svg"),
        ServiceItemModel(
            title: "Craft",
            description:
                "TurnDigital Plan & Design the best-fit actions to meet the business challenge",
            image: "assets/icon/craft.svg"),
        ServiceItemModel(
            title: "Run",
            description:
                "TurnDigital Plan & Design the best-fit actions to meet the business challenge",
            image: "assets/icon/run.svg"),
        ServiceItemModel(
            title: "Optimize",
            description:
                "TurnDigital Plan & Design the best-fit actions to meet the business challenge",
            image: "assets/icon/optimize.svg"),
      ]);

  static OfferingModel dummyOfferingData = OfferingModel(
      title: "Offerings",
      subtitle: "UX designed for matchmaking enterprise objectives to"
          "every human (customers, or staff) and implemented to "
          "a web platform responding in a blink of an eye.",
      buttonText: "Discover",
      offerings: [
        OfferingItemModel(
            title: Constants.offering[0],
            description: "",
            icon: "assets/icon/preferred.svg"),
        OfferingItemModel(
            title: Constants.offering[1],
            description: "",
            icon: "assets/icon/preferred.svg"),
        OfferingItemModel(
            title: Constants.offering[2],
            description: "",
            icon: "assets/icon/preferred.svg"),
        OfferingItemModel(
            title: Constants.offering[3],
            description: "",
            icon: "assets/icon/preferred.svg"),
        OfferingItemModel(
            title: Constants.offering[4],
            description: "",
            icon: "assets/icon/preferred.svg"),
        OfferingItemModel(
            title: Constants.offering[5],
            description: "",
            icon: "assets/icon/preferred.svg"),
        OfferingItemModel(
            title: Constants.offering[6],
            description: "",
            icon: "assets/icon/preferred.svg"),
      ]);

  static EngagementModel dummyEngagementData = EngagementModel(
      title: "Engagement",
      description: "",
      subtitle:
          "TurnDigital services cover all stages of the business life cycle mapped to the enterprise's challenges and needs.",
      buttonText: "Engage",
      engagements: engagement);

// static List<int> leftSide = [];
// static List<int> right = [];
//
// static void buildOffering() {
//   int i = 0;
//
//   for (i; i < Constants.offering.length; i++) {
//     if (i.isEven) {
//       leftSide.add(i);
//     } else {
//       right.add(i);
//     }
//   }
// }
}
