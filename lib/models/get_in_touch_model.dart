import 'package:turn_digital_dashboard_test/models/social_media_model.dart';

class GetInTouchModel {
  final String title;

  // List<SocialMediaModel> socialMedia;
  List<String> socialMedia;

  String address;
  String buttonTitle;

  GetInTouchModel(
      {required this.title,
      required this.socialMedia,
      required this.address,
      required this.buttonTitle});
}
