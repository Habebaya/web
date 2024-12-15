import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:turn_digital_dashboard_test/const/html_text.dart';

import 'package:turn_digital_dashboard_test/home/models/home_model.dart';
import 'package:turn_digital_dashboard_test/home/services_section/widget/service_arrow_stack.dart';
import 'package:turn_digital_dashboard_test/home/services_section/widget/service_number_stack.dart';
import 'package:turn_digital_dashboard_test/home/services_section/widget/service_tile.dart';
import 'package:turn_digital_dashboard_test/shares/section_title.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';
import '../../shares/app_button.dart';
import 'package:flutter_html/flutter_html.dart';

import 'model/service_model.dart';

class ServiceSection extends StatelessWidget {
  final ServiceSectionModel? serviceContent;

  const ServiceSection({super.key, required this.serviceContent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: Constants.paddingHorizontal,
          vertical: Constants.paddingVertical),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HtmlText(
            width: MediaQuery.sizeOf(context).width * 0.6,
            data: serviceContent!.subtitle!,
            fontSize: 60,
            textAlign: TextAlign.center,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 60.0,
                ),
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.5,
                  child: ListView.builder(
                    clipBehavior: Clip.antiAlias,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: serviceContent!.services!.length > 4
                        ? 4
                        : serviceContent!.services!.length,
                    itemBuilder: (context, index) {
                      return Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.none,
                        children: [
                          ServiceTile(
                            serviceItem: serviceContent!.services![index],
                          ),
                          const ServiceArrowStack(),
                          ServiceNumberStack(index: index),
                        ],
                      );
                    },
                  ),
                ),
              ),
              SvgPicture.asset(
                "assets/icon/arrow_service.svg",
                width: MediaQuery.sizeOf(context).width / 21,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 1.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      "assets/icon/arrow_service.svg",
                      width: MediaQuery.sizeOf(context).width / 20,
                    ),
                    SvgPicture.asset(
                      "assets/icon/arrow_service.svg",
                      width: MediaQuery.sizeOf(context).width / 20,
                    ),
                  ],
                ),
              )

              // SizedBox(
              //     width: MediaQuery.sizeOf(context).width * 0.7,
              //     child: Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: Constants.serviceArrowPointer.map((item) {
              //           return
              //              Padding(
              //                padding: const EdgeInsets.symmetric(horizontal: 130.0),
              //                child: SvgPicture.asset(
              //                  "assets/icon/arrow_service.svg",
              //                  width: MediaQuery.sizeOf(context).width / 20,
              //                  alignment: Alignment.center,
              //                ),
              //              );
              //         }).toList()))
            ],
          ),
          AppButton(
            width: MediaQuery.sizeOf(context).width * 0.23,
            height: 52,
            buttonTitle: serviceContent!.buttonText!,
            buttonColor: StaticColors.primaryColor,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
