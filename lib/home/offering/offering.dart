import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/constants.dart';
import 'package:turn_digital_dashboard_test/shares/app_button.dart';

import '../../const/color_constant.dart';
import '../../shares/section_title.dart';
import '../models/home_model.dart';
import 'offering_tile.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Offering extends StatelessWidget {
 final  HomeModel? homeModel;

 const Offering({super.key, required this.homeModel});

  // List<String> newOffering = [];
  //
  // @override
  // void initState() {
  //   super.initState();
  //
  //   Constants.buildOffering();
  //
  //   print(
  //       "right ${Constants.right.toString()} right  ${Constants.right.length}");
  //   print(
  //       "left ${Constants.leftSide.toString()} left  ${Constants.leftSide.length}");
  //
  //   for (int r = 0; r < Constants.right.length; r++) {
  //     print(Constants.offering[(Constants.right[r])]);
  //     newOffering.add(Constants.offering[(Constants.right[r])]);
  //     print("new ${newOffering.toString()} new  ${newOffering.length}");
  //   }
  //   print("new ${newOffering.toString()} new  ${newOffering.length}");
  // }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 80),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SectionTitle(
                  isOffering: true,
                  title: homeModel!.offeringModel!.title!,
                  description: homeModel!.offeringModel!.subtitle!,
                ),
                const SizedBox(
                  height: 60,
                ),
                AppButton(
                  width: MediaQuery.sizeOf(context).width * 0.2,
                  height: 56,
                  buttonTitle: homeModel!.offeringModel!.homeButtonText!,
                  buttonColor: StaticColors.appTheme_55B,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.06,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: homeModel!.offeringModel!.offerings!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      index.isEven
                          ? SizedBox(
                              width: MediaQuery.of(context).size.width * 0.26,
                              child: OfferingTile(
                                  offeringItem: homeModel!
                                      .offeringModel!.offerings![index]))
                          : const SizedBox.shrink(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.
                        center,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                if (index.isOdd)
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, bottom: 50, top: 10),
                                      child: SvgPicture.asset(
                                          "assets/icon/line_one.svg"),
                                    ),
                                  ),
                                if (index.isOdd)
                                  Positioned(
                                    top: MediaQuery.sizeOf(context).height * 0.095,
                                    right: -MediaQuery.sizeOf(context).width * 0.013,
                                    child: SvgPicture.asset(
                                      "assets/icon/line_two.svg",
                                      height: 50,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          index.isOdd
                              ? Expanded(
                                child: OfferingTile(
                                    offeringItem: homeModel!
                                        .offeringModel!.offerings![index]),
                              )
                              : const SizedBox.shrink(),
                        ],
                      ),
                    ],
                  );
                }),
          )
          // Expanded(
          //     flex: 2,
          //     child: Row(
          //           crossAxisAlignment: CrossAxisAlignment.end,
          //           children: [
          //             Expanded(
          //                 child: Column(
          //                   children: Constants.leftSide.map((item) {
          //                     print("item ${item}");
          //                     return OfferingTile(
          //                         title: Constants.offering[item], leftItem: true);
          //                   }).toList(),
          //                 )),
          //             Expanded(
          //                 child: Container(
          //                   height: MediaQuery.of(context).size.height * 0.6,
          //                   child: Column(
          //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                     children: Constants.right.map((item) {
          //                       print("item ${item}");
          //                       return ItemTitle(
          //                           title: Constants.offering[item]);
          //                     }).toList(),
          //                   ),
          //                 )),
          //           ],
          //
          //     ))

          /// don't delete it
          // Expanded(
          //   flex: 1,
          //   child: ListView.builder(
          //       physics: const NeverScrollableScrollPhysics(),
          //       shrinkWrap: true,
          //       itemCount: Constants.leftSide.length,
          //       itemBuilder: (BuildContext context, int index) {
          //         return OfferingTile(
          //           title: Constants.offering[Constants.leftSide[index]],
          //           leftItem: true
          //         );
          //       }),
          // ),
          // Expanded(
          //   child: ListView.builder(
          //       physics: const NeverScrollableScrollPhysics(),
          //       shrinkWrap: true,
          //       itemCount: Constants.right.length,
          //       itemBuilder: (BuildContext context, int index) {
          //         return OfferingTile(
          //           title: Constants.offering[Constants.right[index]],
          //           leftItem: false,
          //         );
          //       }),
          // )
        ],
      ),
    );
  }
}
