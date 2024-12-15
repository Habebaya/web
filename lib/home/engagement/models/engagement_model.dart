
import 'engagement_item_model.dart';

class EngagementModel {
  int? count;
  String? id;
  String? title;
  String? subtitle;
  String? description;
  String? buttonText;
  List<EngagementItemModel>? engagements;

  EngagementModel(
      {this.count,
      this.title,
      this.subtitle,
      this.description,
      this.buttonText,
      this.engagements});

  EngagementModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    title = json['data']['title'];
    subtitle = json['data']['subtitle'];
    description = json['data']['description'];

    buttonText = json['data']['button_text'];
    engagements = List<EngagementItemModel>.from(json['data']['engagementItems']
        .map((x) => EngagementItemModel.fromJson(x)));
  }
}
