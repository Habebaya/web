import 'package:flutter/cupertino.dart';
import 'package:turn_digital_dashboard_test/const/color_constant.dart';

class DividerImage extends StatelessWidget {
  const DividerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Image.asset("assets/background/developing_background.png"),
           Positioned(
            left: 0,
            right: 0,
            top: 30,
            bottom: 30,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Developing',
                          style: TextStyle(
                            color: StaticColors.appTheme_55B,
                            fontSize: 60,
                            fontFamily: 'Avenir LT Std',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: ' For a Purpose',
                          style: TextStyle(
                            color: StaticColors.whiteColor,
                            fontSize: 60,
                            fontFamily: 'Avenir LT Std',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 36,),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: const Text(
                      'TurnDigital is aspiring for, always, a better, "human 2 human" experience. Connecting us all, individuals and organizations, through digital interfaces.',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                        color: StaticColors.whiteColor,
                        fontSize: 20,
                        fontFamily: 'Avenir LT Std',
                        fontWeight: FontWeight.w300,
                        height: 0,
                      ),
                    ),
                  )

                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
