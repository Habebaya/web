
import 'foaterr_content_model.dart';

class FooterModel {
  String title;
  List<FooterContentModel> subTitles;
  bool isMainTitle;



  FooterModel(
      {required this.title,
      required this.isMainTitle,
      required this.subTitles});
}
