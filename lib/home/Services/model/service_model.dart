import 'package:turn_digital_dashboard_test/home/Services/model/service_item_model.dart';

class ServiceModel {
  int? count;
  String? title;
  String? subtitle;
  String? homeButtonText;
  List<ServiceItemModel>? services;

  ServiceModel(
      {this.count,
      this.title,
      this.subtitle,
      this.homeButtonText,
      this.services});

  ServiceModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    title = json['data']['title'];
    subtitle = json['data']['subtitle'];
    homeButtonText = json['data']['homeButtonText'];
    services = List<ServiceItemModel>.from(
        json['data']['serviceItems'].map((x) => ServiceItemModel.fromJson(x)));
  }
}

