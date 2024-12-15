import 'package:turn_digital_dashboard_test/header/model/header_model.dart';
import 'package:turn_digital_dashboard_test/home/boundary/model/boundary_model.dart';
import 'package:turn_digital_dashboard_test/home/client/model/client_model.dart';
import 'package:turn_digital_dashboard_test/home/divider/model/divider_model.dart';
import 'package:turn_digital_dashboard_test/home/engagement/models/engagement_model.dart';
import 'package:turn_digital_dashboard_test/technology/model/technology_model.dart';

import '../offering/model/offering_model.dart';
import '../services_section/model/service_model.dart';

class HomeModel {
  HeaderModel? headerModel;
  ServiceSectionModel? serviceModel;
  OfferingModel? offeringModel;
  DividerModel? dividerModel;
  EngagementModel? engagementModel;
  ClientModel? clientModel;
  TechnologyModel? technologyModel;
  BoundaryModel? boundaryModel;

  HomeModel(
      {this.headerModel,
      this.serviceModel,
      this.offeringModel,
      this.dividerModel,
      this.engagementModel,
      this.clientModel,
      this.technologyModel,
      this.boundaryModel});

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      headerModel: json['headerModel'] != null ? HeaderModel.fromJson(json['headerModel']) : null,
      serviceModel: json['serviceSectionModel'] != null ? ServiceSectionModel.fromJson(json['serviceSectionModel']) : null,
      dividerModel: json['dividerModel'] != null ? DividerModel.fromJson(json['dividerModel']) : null,
      offeringModel: json['offeringsModel'] != null ? OfferingModel.fromJson(json['offeringsModel']) : null,
      engagementModel: json['engagementModel'] != null ? EngagementModel.fromJson(json['engagementModel']) : null,
      clientModel: json['clientsModel'] != null ? ClientModel.fromJson(json['clientsModel']) : null,
      technologyModel: json['technologyModel'] != null ? TechnologyModel.fromJson(json['technologyModel']) : null,
      boundaryModel: json['otherSectionModel'] != null ? BoundaryModel.fromJson(json['otherSectionModel']) : null,
    );
  }
}
