
class ServiceItemModel {
  int? id;
  String? title;
  String? description;
  String? image;
  int? activeRecord;

  ServiceItemModel({this.id,this.title, this.description, this.image,this.activeRecord});

  ServiceItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    image = json['image'];
    activeRecord = json['activeRecord'];

  }
}