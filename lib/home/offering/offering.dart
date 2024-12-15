import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/constants.dart';
import 'package:turn_digital_dashboard_test/home/offering/model/offering_model.dart';
import 'package:turn_digital_dashboard_test/shares/app_button.dart';

import '../../const/color_constant.dart';
import '../../shares/section_title.dart';
import '../models/home_model.dart';
import 'offering_tile.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Offering extends StatelessWidget {
 final  OfferingModel? offeringContent;

 const Offering({super.key, required this.offeringContent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: Constants.paddingHorizontal  ,vertical: Constants.paddingVertical),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SectionTitle(
                  isOffering: true,
                  title: offeringContent!.title!,
                  subTitle:  offeringContent!.subtitle!,
                ),
                const SizedBox(
                  height: 60,
                ),
                AppButton(
                  width:322,
                  height: 52,
                  buttonTitle:  offeringContent!.buttonText!,
                  buttonColor: StaticColors.primaryColor,
                  onPressed: () {},
                ),
              ],
            ),
          ),
         SizedBox(width: 100,),
          Expanded(
            flex: 2,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount:  offeringContent!.offerings!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      index.isEven
                          ? SizedBox(
                              width: MediaQuery.of(context).size.width * 0.26,
                              child: OfferingTile(
                                  offeringItem:  offeringContent!.offerings![index]))
                          : const SizedBox.shrink(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.
                        center,
                        children: [
                          Expanded(
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                if (index.isOdd)
                                  const SizedBox.shrink(),

                              ],
                            ),
                          ),
                          index.isOdd
                              ? Expanded(
                                child: OfferingTile(
                                    offeringItem:  offeringContent!.offerings![index]),
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
