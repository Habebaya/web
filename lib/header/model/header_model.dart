
class HeaderModel {
  int? count;
  int? id;
  String? title;
  String? subtitle;
  String? buttonText;
  String? routePath;
  String? image;
  int? activeRecord;

  HeaderModel(
      {this.count,
      this.id,
      this.title,
      this.subtitle,
      this.buttonText,
      this.routePath,
      this.image,
      this.activeRecord});

  HeaderModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    id = json['id'];
    title = json['data']['title'];
    subtitle = json['data']['subtitle'];
    buttonText = json['data']['button_text'];
    image = json['data']['image '];
    routePath = json['data']['route_path'];
  }
}
