import 'package:turn_digital_dashboard_test/models/get_in_touch_model.dart';

import 'footer_model.dart';

class HeaderFooterModel {
  String footerLogo;
  String headerLogo;
  GetInTouchModel getInTouchModel;

  HeaderFooterModel(
      {required this.footerLogo,
      required this.headerLogo,
      required this.getInTouchModel});
}
