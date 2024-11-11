import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/home/Services/service_model.dart';
import 'package:turn_digital_dashboard_test/home/Services/service_tile.dart';
import 'package:turn_digital_dashboard_test/shares/section_title.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';
import 'package:turn_digital_dashboard_test/const/responsive.dart';

import '../../shares/app_button.dart';

class OurService extends StatelessWidget {
  OurService({
    super.key,
  });

  List<ServiceModel> services = [
    ServiceModel(
        title: "Define",
        description:
            "TurnDigital Plan & Design the best-fit actions to meet the business challenge",
        icon: "assets/icon/define.svg"),
    ServiceModel(
        title: "Craft",
        description:
            "TurnDigital Plan & Design the best-fit actions to meet the business challenge",
        icon: "assets/icon/craft.svg"),
    ServiceModel(
        title: "Run",
        description:
            "TurnDigital Plan & Design the best-fit actions to meet the business challenge",
        icon: "assets/icon/run.svg"),
    ServiceModel(
        title: "Optimize",
        description:
            "TurnDigital Plan & Design the best-fit actions to meet the business challenge" ,
        icon: "assets/icon/optimize.svg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 90,vertical: 80),
      color: ConstantColor.backgroundColor,
      child: Column(
        children: [
          SectionTitle(
            title: "Services",
            description:
                "TurnDigital services cover all stages of the business life cycle mapped to the enterprise's challenges and needs.",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 56.0),
            child: GridView.builder(
              clipBehavior: Clip.none,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: Responsive.isDesktop(context) ? 4 : 1,
                // Number of columns
                childAspectRatio: Responsive.isDesktop(context) ? 0.82 : 0.2,
                // Aspect ratio for each item
                crossAxisSpacing: 30.0,
                // // Horizontal spacing
              ),
              itemCount: services.length,
              itemBuilder: (context, index) {
                return ServiceTile(


                  serviceModel: services[index],
                );
              },
            ),
          ),

          AppButton(
            width: MediaQuery.sizeOf(context).width* 0.16 ,
            height: 56,
            buttonTitle: 'Discover',

            buttonColor: ConstantColor.primaryColor,
            onPressed: () {},
          ),


        ],
      ),
    );
  }
}
