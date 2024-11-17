import 'offering_item_model.dart';

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



