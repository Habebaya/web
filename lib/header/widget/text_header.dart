import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/shares/app_button.dart';
import '../../const/color_constant.dart';
import '../../const/html_text.dart';
import '../model/header_model.dart';

class TextHeader extends StatelessWidget {
  final HeaderModel? headerData;
  const TextHeader({super.key, required this.headerData,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.45,
      // height: MediaQuery.sizeOf(context).height * 0.7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Seamlessly",
            textAlign: TextAlign.start,
            style: TextStyle(
              color: StaticColors.titleHeaderBlackColor,
              fontWeight: FontWeight.w400,
              fontSize: 40,
              fontFamily: 'Avenir LT Std',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          HtmlText(
            width:  MediaQuery.sizeOf(context).width * 0.5,

            data: headerData!.title!,
            fontSize: 70,
          ),
          const SizedBox(
            height: 25,
          ),
          HtmlText(
            width:  MediaQuery.sizeOf(context).width * 0.3,
            data: headerData!.subtitle!,
            fontSize: 18,
          ),
          const SizedBox(
            height: 70,
          ),
          AppButton(
            getInTouchButton: false,
            width: MediaQuery.sizeOf(context).width * 0.23,
            height: 52,
            buttonTitle: headerData!.buttonText!,
            buttonColor: StaticColors.primaryColor,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
