
class ServiceItemModel {
  String? serviceTitle;
  String? serviceDesc;
  String? serviceImg;

  ServiceItemModel({this.serviceTitle, this.serviceDesc, this.serviceImg});

  ServiceItemModel.fromJson(Map<String, dynamic> json) {
    serviceTitle = json['serviceTitle'];
    serviceDesc = json['serviceDesc'];
    serviceImg = json['serviceImg'];
  }
}