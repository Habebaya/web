class TechnologyItemModel {
  int? id;
  String? title;
  String? link;
  String? image;
  int? activeRecord;

  TechnologyItemModel({this.title, this.link, this.image,this.id, this.activeRecord});

  TechnologyItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];

    title = json['title'];
    link = json['link'];
    image = json['image'];
    activeRecord = json['active_record'];
  }
}
