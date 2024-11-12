class OfferingModel {
  int? count;
  String? title;
  String? subtitle;
  String? homeButtonText;
  List<OfferingItemModel>? offerings;

  OfferingModel(
      {this.count,
      this.title,
      this.subtitle,
      this.homeButtonText,
        this.offerings
   });

  OfferingModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    title = json['data']['title'];
    subtitle = json['data']['subtitle'];
    homeButtonText = json['data']['homeButtonText'];
    offerings = List<OfferingItemModel>.from(
        json['data']['offeringItems'].map((x) => OfferingItemModel.fromJson(x)));
  }
}

class OfferingItemModel {
  String? title;
  String? description;
  String? icon;

  OfferingItemModel({this.title, this.description, this.icon});

  OfferingItemModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    icon = json['icon'];
  }
}
