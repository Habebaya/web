
import 'package:flutter/material.dart';

import '../home/engagement/engagement_model.dart';
import '../home/footer/models/foaterr_content_model.dart';
import '../home/footer/models/footer_model.dart';
import '../home/home.dart';


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
    EngagementModel(title: "Project as a service\n(Preferred)", icon:"assets/icon/preferred.svg" ),
    EngagementModel(title: "Managed Teams\n", icon:"assets/icon/managed_teams.svg" ),
    EngagementModel(title: "Extend Teams\n", icon:"assets/icon/extend_teams.svg" ),

  ];


}
