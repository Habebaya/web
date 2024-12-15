import 'technology_item_model.dart';

class TechnologyModel {
  int? count;
  String? id;
  String? title;
  String? subtitle;
  String? description;
  String? image;
  String? otherDescription;
  int? activeRecord;
  List<TechnologyItemModel>? items;

  TechnologyModel(
      {this.count,
      this.id,
      this.title,
      this.subtitle,
      this.description,
      this.otherDescription,
      this.image,
      this.activeRecord,
      this.items});

  TechnologyModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    title = json['data']['title'];
    subtitle = json['data']['subtitle'];
    description = json['data']['description'];
    otherDescription = json['data']['other_description'];

    image = json['data']['image'];

    items = List<TechnologyItemModel>.from(
        json['data']['techItems'].map((x) => TechnologyItemModel.fromJson(x)));
  }
}
