import 'package:turn_digital_dashboard_test/home/services_section/model/service_item_model.dart';

class ServiceSectionModel {
  int? count;
  int? id;
  String? title;
  String? subtitle;
  String? buttonText;
  int? activeRecord;
  List<ServiceItemModel>? services;
  ServiceSectionModel(
      {this.count,
      this.id,
      this.title,
      this.subtitle,
      this.buttonText,
      this.services});

  ServiceSectionModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    id = json['id'];
    title = json['data']['title'];
    subtitle = json['data']['subtitle'];
    buttonText = json['data']['button_text'];
    services = List<ServiceItemModel>.from(
        json['data']['serviceItems'].map((x) => ServiceItemModel.fromJson(x)));
  }
}
