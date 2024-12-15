
class BoundaryModel {
  int? count;
  int? id;
  String? title;
  String? subtitle;
  String? image;
  String? description;
  int? activeRecord;

  BoundaryModel(
      {this.count,
      this.id,
      this.title,
      this.subtitle,
      this.image,
      this.description,
      this.activeRecord});

  BoundaryModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    id = json['id'];
    title = json['data']['title'];
    subtitle = json['data']['subtitle'];
    description = json['data']['description'];

    image = json['data']['image'];
  }
}
