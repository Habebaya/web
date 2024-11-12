import '../offering/offering_model.dart';

class HomeModel {
  bool? success;
  dynamic error;
  OfferingModel? offeringModel;

  HomeModel({this.success, this.error, this.offeringModel});

  HomeModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    offeringModel = OfferingModel.fromJson(json['data']['offeringsModel']);
  }
}
