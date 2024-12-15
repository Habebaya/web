
class DividerModel {
  int? count;
  int? id;
  String? title;
  String? subtitle;
  String? image;
  String? description;
  int? activeRecord;

  DividerModel(
      {this.count,
      this.id,
      this.title,
      this.subtitle,
      this.image,
      this.description,
      this.activeRecord});

  DividerModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    id = json['id'];
    title = json['data']['title'];
    subtitle = json['data']['subtitle'];
    description = json['data']['description'];

    image = json['data']['image'];
  }
}
