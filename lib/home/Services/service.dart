import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/home/Services/service_model.dart';
import 'package:turn_digital_dashboard_test/home/Services/service_tile.dart';
import 'package:turn_digital_dashboard_test/home/section_title.dart';
import 'package:turn_digital_dashboard_test/home/color_constant.dart';
import 'package:turn_digital_dashboard_test/home/responsive.dart';

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
      padding: EdgeInsets.symmetric(horizontal: 56,vertical: 124),
      width: MediaQuery.of(context).size.width,
      color: ConstantColor.backgroundColor,
      child: Column(
        children: [
          SectionTitle(
            title: "Services",
            description:
                "TurnDigital services cover all stages of the business life cycle mapped to the enterprise's challenges and needs.",
          ),
          const SizedBox(
            height: 28,



          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 56.0),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: Responsive.isDesktop(context) ? 4 : 1,
                // Number of columns
                childAspectRatio: Responsive.isDesktop(context) ? 0.85 : 1,
                // Aspect ratio for each item
                crossAxisSpacing: 37.0,
                mainAxisSpacing: 37
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


        ],
      ),
    );
  }
}
