import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/responsive.dart';
import 'package:turn_digital_dashboard_test/home/client/client_tile.dart';
import 'package:turn_digital_dashboard_test/home/client/model/client_model.dart';
import 'package:turn_digital_dashboard_test/shares/app_button.dart';

import '../../const/color_constant.dart';
import '../../const/constants.dart';
import '../models/home_model.dart';

class Clients extends StatelessWidget {
  final ClientModel? clientsContent;

  const Clients({super.key, required this.clientsContent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: Constants.paddingHorizontal  ,vertical: Constants.paddingVertical),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            clientsContent!.subtitle!,
            style: const TextStyle(
              color: StaticColors.blackColor,
              fontSize: 60,
              fontFamily: 'Avenir LT Std',
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: SizedBox(
              height: 100,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: Responsive.isDesktop(context) ? 1 : 1,
                    // Number of columns
                    childAspectRatio: Responsive.isDesktop(context) ? 1 : 1,
                    // Aspect ratio for each item
                    crossAxisSpacing: 0.0,
                    mainAxisSpacing: 80
                    // // Horizontal spacing
                    ),
                itemCount: 7,
                itemBuilder: (context, index) {
                  return ClientTile(
                    clientItemModel: clientsContent!.clients![index],
                  );
                },
              ),
            ),
          ),
          AppButton(
            width: 322,
            height: 52,
            buttonTitle: "See More",
            buttonColor: StaticColors.primaryColor,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
