class ClientDomainItemModel {
  String? id;
  int? activeRecord;
  String? image;


  String? title;

  ClientDomainItemModel({
    this.title,
    this.image,
    this.activeRecord,
    this.id,
  });

  ClientDomainItemModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
    activeRecord = json["active_record"];
  }
}
