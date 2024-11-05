import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/home/color_constant.dart';
import 'package:turn_digital_dashboard_test/offering/offering_tile.dart';
import '../home/responsive.dart';
import '../home/section_title.dart';

class Offering extends StatelessWidget {
  const Offering({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: ConstantColor.backgroundColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 56,vertical: 124),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
              Expanded (

                 child: SectionTitle(
                   isOffering: true,
                   title: "Offering",
                   description:"UX designed for matchmaking enterprise "
                       "\nobjectives to every human(customers, or staff) "
                       "\nand implemented to a web platform "
                       "\nresponding in a blink of an eye.",
                 ),
               ),
               Expanded(
                 child: Wrap(
                   children: [
                     OfferingTile(),



                   ],
                 )
               ),
             ],
           )


          ],
        ),
      ),
    );
  }
}
