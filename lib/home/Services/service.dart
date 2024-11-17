import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:turn_digital_dashboard_test/home/Services/widget/service_arrow_stack.dart';
import 'package:turn_digital_dashboard_test/home/Services/widget/service_number_stack.dart';
import 'package:turn_digital_dashboard_test/home/Services/widget/service_tile.dart';
import 'package:turn_digital_dashboard_test/home/models/home_model.dart';
import 'package:turn_digital_dashboard_test/shares/section_title.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';
import '../../shares/app_button.dart';

class OurService extends StatelessWidget {
  final HomeModel? serviceContent;
  final bool useDummy;

  const OurService(
      {super.key, required this.serviceContent, this.useDummy = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
      color: ConstantColor.backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SectionTitle(
            title: "Services",
            description:
                "TurnDigital services cover all stages of the business life cycle mapped to the enterprise's challenges and needs.",
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 60.0,
                ),
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.47,
                  child: ListView.builder(
                    clipBehavior: Clip.none,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: useDummy
                        ? Constants.dummyServiceData.services!.length
                        : serviceContent!.serviceModel!.services!.length > 4
                            ? 4
                            : serviceContent!.serviceModel!.services!.length,
                    itemBuilder: (context, index) {
                      return Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.none,
                        children: [
                          ServiceTile(
                            serviceItem: useDummy
                                ? Constants.dummyServiceData.services![index]
                                : serviceContent!
                                    .serviceModel!.services![index],
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
            width: MediaQuery.sizeOf(context).width * 0.2,
            height: 56,
            buttonTitle: serviceContent!.serviceModel!.homeButtonText!,
            buttonColor: ConstantColor.primaryColor,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
