import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shares/section_title.dart';
import 'offering_tile.dart';

class Offering extends StatelessWidget {
  Offering({
    super.key,
  });

  List<String> offering = [
    "Digital Objectives Solution",
    'Web Technologies Platform Solutions',
    'Business Process Automation Solution',
    'Continuous Improvement Solutions',
    'User Experience Solutions',
    'Integration Solutions',
    'Environment Management and Support Solutions',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 90,vertical: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: SectionTitle(
                  isOffering: true,
                  title: "Offering",
                  description:
                      "UX designed for matchmaking enterprise objectives to every human(customers, or staff) nand implemented to a web platform responding in a blink of an eye.",
                ),
              ),
              SizedBox(width: 50,),
              Expanded(
                  flex: 2,
                  child: Column(
                      children: offering.asMap().entries.map((entry) {
                    int index = entry.key;
                    var item = entry.value;

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: ItemTitle(
                                    isFirstItem: true,
                                    isOdd: true,
                                    title: item,
                                    lastIndex: false,
                                    index: index),
                              ),
                              Expanded(
                                child: ItemTitle(
                                    isFirstItem: true,
                                    isOdd: true,
                                    title: item,
                                    lastIndex: false,
                                    index: index),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 40),
                            child: SvgPicture.asset("assets/icon/line_one.svg"),
                          ),
                        ],
                      );

                  }).toList())

                  // Container(
                  //   width: MediaQuery.of(context).size.width,
                  //   height: 100,
                  //   child: ListView.builder(
                  //       shrinkWrap: true,
                  //       scrollDirection: Axis.vertical,
                  //       physics: NeverScrollableScrollPhysics(),
                  //       itemCount: offering.length,
                  //       itemBuilder: (context, index) {
                  //         int itemIndex = index;
                  //         bool isFirstItem = index == 0;
                  //
                  //         bool lastIndex = index == offering.length;
                  //         bool isOdd = index.isOdd;
                  //
                  //         return Row(
                  //           children: [
                  //             if (index.isOdd) Expanded(child: Text("Odd")),
                  //             if (index.isEven) Expanded(child: Text("even"))
                  //           ],
                  //         );
                  //
                  //         OfferingTile(
                  //             title: offering[index],
                  //             isFirstItem: isFirstItem,
                  //             lastIndex: lastIndex,
                  //             isOdd: isOdd,
                  //             index: itemIndex);
                  //       }),
                  // ),
                  ),
            ],
          ),
        ],
      ),
    );
  }
}
