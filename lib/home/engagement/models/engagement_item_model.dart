
class EngagementItemModel {
  String? logo;
  String? title;
  String? subtitle;

  EngagementItemModel({this.logo, this.title, this.subtitle});

  EngagementItemModel.fromJson(Map<String, dynamic> json) {
    logo = json['logo'];
    title = json['title'];
    subtitle = json['subtitle'];
  }
}