import 'package:flutter/material.dart';
import 'package:turn_digital_dashboard_test/const/responsive.dart';
import 'package:turn_digital_dashboard_test/shares/app_button.dart';

import '../const/color_constant.dart';

class Client extends StatelessWidget {
  const Client({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 90,vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'We have 70+ trusted clients',
              style: TextStyle(
                color: ConstantColor.blackColor,
                fontSize: 60,
                fontFamily: 'Avenir LT Std',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.
                symmetric(vertical: 40.0),
              child: SizedBox(
                height: 100,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
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
                    return Image.asset("assets/aws.webp");
                  },
                ),
              ),
            ),

            AppButton(
              width: MediaQuery.sizeOf(context).width* 0.16 ,
              height: 56,
              buttonTitle: 'See More',
              buttonColor: ConstantColor.primaryColor,
              onPressed: () {},
            ),
          ],
        ),

    );
  }
}
