import 'package:flutter/cupertino.dart';
import 'package:turn_digital_dashboard_test/home/Services/model/service_item_model.dart';
import 'package:turn_digital_dashboard_test/home/Services/model/service_model.dart';
import 'package:turn_digital_dashboard_test/home/engagement/models/engagement_item_model.dart';
import 'package:turn_digital_dashboard_test/home/offering/model/offering_item_model.dart';

import '../home/engagement/models/engagement_model.dart';
import '../home/footer/models/foaterr_content_model.dart';
import '../home/footer/models/footer_model.dart';
import '../home/models/home_model.dart';
import '../home/offering/model/offering_model.dart';

class Constants {
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
        logo: "assets/icon/preferred.svg",
        subtitle: ""),
    EngagementItemModel(
        title: "Managed Teams\n", logo: "assets/icon/managed_teams.svg"),
    EngagementItemModel(
        title: "Extend Teams\n", logo: "assets/icon/extend_teams.svg"),
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
      success: true,
      serviceModel: dummyServiceData,
      offeringModel: dummyOfferingData,
      engagementModel: dummyEngagementData);

  static ServiceModel dummyServiceData = ServiceModel(
      title: "Services",
      subtitle:
          "TurnDigital services cover all stages of the business life cycle mapped to the enterprise's challenges and needs.",
      homeButtonText: "Discover",
      services: [
        ServiceItemModel(
            serviceTitle: "Define",
            serviceDesc:
                "TurnDigital Plan & Design the best-fit actions to meet the business challenge",
            serviceImg: "assets/icon/define.svg"),
        ServiceItemModel(
            serviceTitle: "Craft",
            serviceDesc:
                "TurnDigital Plan & Design the best-fit actions to meet the business challenge",
            serviceImg: "assets/icon/craft.svg"),
        ServiceItemModel(
            serviceTitle: "Run",
            serviceDesc:
                "TurnDigital Plan & Design the best-fit actions to meet the business challenge",
            serviceImg: "assets/icon/run.svg"),
        ServiceItemModel(
            serviceTitle: "Optimize",
            serviceDesc:
                "TurnDigital Plan & Design the best-fit actions to meet the business challenge",
            serviceImg: "assets/icon/optimize.svg"),
      ]);

  static OfferingModel dummyOfferingData = OfferingModel(
      title: "Offerings",
      subtitle: "UX designed for matchmaking enterprise objectives to"
          "every human (customers, or staff) and implemented to "
          "a web platform responding in a blink of an eye.",
      homeButtonText: "Discover",
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
