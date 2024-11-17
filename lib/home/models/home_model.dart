import 'package:turn_digital_dashboard_test/home/Services/model/service_model.dart';
import 'package:turn_digital_dashboard_test/home/engagement/models/engagement_model.dart';

import '../offering/model/offering_model.dart';

class HomeModel {
  bool? success;
  dynamic error;
  ServiceModel? serviceModel;
  OfferingModel? offeringModel;
  EngagementModel? engagementModel;

  HomeModel(
      {this.success,
      this.error,
      this.serviceModel,
      this.offeringModel,
      this.engagementModel});

  HomeModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    serviceModel = ServiceModel.fromJson(json['data']['serviceSectionModel']);
    offeringModel = OfferingModel.fromJson(json['data']['offeringsModel']);
    engagementModel = EngagementModel.fromJson(json['data']['engagementModel']);
  }
}
