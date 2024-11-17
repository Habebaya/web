class OfferingItemModel {
  String? title;
  String? description;
  String? icon;

  OfferingItemModel({this.title, this.description, this.icon});

  OfferingItemModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    icon = json['icon']??"";
  }
}