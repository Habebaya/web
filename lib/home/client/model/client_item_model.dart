class ClientItemModel {
  String? id;
  int? activeRecord;
  String? image;
  String? link;

  String? title;

  ClientItemModel({
    this.title,
    this.link,
    this.image,
    this.activeRecord,
    this.id,
  });

  ClientItemModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    link = json['link'];

    image = json['image'];
    activeRecord = json["active_record"];
  }
}
