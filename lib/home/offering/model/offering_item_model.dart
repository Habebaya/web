class OfferingItemModel {
  int? id;
  String? title;
  String? description;
  String? icon;
  String? image;
  int? activeRecord;

  OfferingItemModel({
    this.id,
    this.title,
    this.description,
    this.icon,
    this.image,
    this.activeRecord,
  });

  OfferingItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];

    title = json['title'];
    description = json['description'];
    icon = json['icon'] ?? "";
    image = json['image'];
    activeRecord = json['active_record'];
  }
}
