import 'offering_item_model.dart';

class OfferingModel {
  int? count;
  int? id;
  String? title;
  String? subtitle;
  String? otherTitle;

  String? buttonText;
  int? activeRecord;
  List<OfferingItemModel>? offerings;

  OfferingModel(
      {this.count,
      this.id,
      this.title,
      this.subtitle,
      this.buttonText,
      this.otherTitle,
      this.offerings});

  OfferingModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    count = json['count'];
    title = json['data']['title'];
    subtitle = json['data']['subtitle'];
    otherTitle = json['data']['other_title'];
    buttonText = json['data']['button_text'];
    offerings = List<OfferingItemModel>.from(json['data']['offeringItems']
        .map((x) => OfferingItemModel.fromJson(x)));
  }
}
