import 'package:turn_digital_dashboard_test/models/foaterr_content_model.dart';

class FooterModel {
  String title;
  List<FooterContentModel> subTitles;
  bool isMainTitle;



  FooterModel(
      {required this.title,
      required this.isMainTitle,
      required this.subTitles});
}
