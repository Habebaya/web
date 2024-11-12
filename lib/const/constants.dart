import 'package:flutter/material.dart';

import '../home/engagement/engagement_model.dart';
import '../home/footer/models/foaterr_content_model.dart';
import '../home/footer/models/footer_model.dart';
import '../home/home.dart';
import '../home/models/home_model.dart';
import '../home/offering/offering_model.dart';

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

  static List<EngagementModel> engagement = [
    EngagementModel(
        title: "Project as a service\n(Preferred)",
        icon: "assets/icon/preferred.svg"),
    EngagementModel(
        title: "Managed Teams\n", icon: "assets/icon/managed_teams.svg"),
    EngagementModel(
        title: "Extend Teams\n", icon: "assets/icon/extend_teams.svg"),
  ];

  static HomeModel defaultOfferingData = HomeModel(
      success: true,
      offeringModel: OfferingModel(
          title: "Offerings",
          subtitle: "UX designed for matchmaking enterprise objectives to"
              "every human (customers, or staff) and implemented to "
              "a web platfort responding in a blink of an eye.",
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
          ]));
  static List<String> offering = [
    "Digital Objectives Solution",
    'Web Technologies Platform Solutions',
    'Business Process Automation Solution',
    'Continuous Improvement Solutions',
    'User Experience Solutions',
    'Integration Solutions',
    'Environment Management and Support Solutions',
  ];
  static List<int> leftSide = [];
  static List<int> right = [];

  static void buildOffering() {
    int i = 0;

    for (i; i < Constants.offering.length; i++) {
      if (i.isEven) {
        leftSide.add(i);
      } else {
        right.add(i);
      }
    }
  }
}
