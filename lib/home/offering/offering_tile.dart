import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';

import 'model/offering_item_model.dart';

class OfferingTile extends StatelessWidget {
 final  OfferingItemModel offeringItem;

 const  OfferingTile({super.key, required this.offeringItem});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // SvgPicture.network(
        // offeringItem.icon!,
        // ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            offeringItem.title!,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style:  const TextStyle(
              color: ConstantColor.subTitleGrayColor,
              fontSize: 20,
              fontFamily: 'Avenir LT Std',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        )
      ],
    );
  }
}
