
class EngagementItemModel {

  String? id;
  String? title;
  String? subtitle;
  String? image;
  int?activeRecord;

  EngagementItemModel({this.image, this.title, this.subtitle,this.activeRecord});

  EngagementItemModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    image = json['image'];
    activeRecord = json['active_record'];

  }
}